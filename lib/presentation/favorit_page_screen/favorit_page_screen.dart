import '../favorit_page_screen/widgets/userprofile1_item_widget.dart';
import 'bloc/favorit_page_bloc.dart';
import 'models/favorit_page_model.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/presentation/wishlist_page_one_page/wishlist_page_one_page.dart';
import 'package:ngafe/widgets/app_bar/appbar_subtitle.dart';
import 'package:ngafe/widgets/app_bar/custom_app_bar.dart';
import 'package:ngafe/widgets/custom_bottom_bar.dart';
import 'package:ngafe/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class FavoritPageScreen extends StatelessWidget {
  FavoritPageScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<FavoritPageBloc>(
        create: (context) => FavoritPageBloc(
            FavoritPageState(favoritPageModelObj: FavoritPageModel()))
          ..add(FavoritPageInitialEvent()),
        child: FavoritPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 19.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 14.h, right: 7.h),
                      child: BlocSelector<FavoritPageBloc, FavoritPageState,
                              TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_pencarian".tr,
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 10.v));
                          })),
                  SizedBox(height: 27.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 13.h),
                          child: Text("lbl_favorit".tr,
                              style: theme.textTheme.headlineSmall))),
                  SizedBox(height: 7.v),
                  _buildUserProfile(context)
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.symmetric(horizontal: 44.h),
                child: _buildBottomBar(context))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarSubtitle(
            text: "lbl_bars".tr, margin: EdgeInsets.only(left: 21.h)),
        actions: [
          GestureDetector(
              onTap: () {
                onTapView(context);
              },
              child: Container(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
                  decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                      borderRadius: BorderRadius.circular(18.h))))
        ]);
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child:
            BlocSelector<FavoritPageBloc, FavoritPageState, FavoritPageModel?>(
                selector: (state) => state.favoritPageModelObj,
                builder: (context, favoritPageModelObj) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 8.v);
                      },
                      itemCount:
                          favoritPageModelObj?.userprofile1ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Userprofile1ItemModel model =
                            favoritPageModelObj?.userprofile1ItemList[index] ??
                                Userprofile1ItemModel();
                        return Userprofile1ItemWidget(model);
                      });
                }));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Favoriteprimary:
        return "/";
      case BottomBarEnum.Home:
        return AppRoutes.wishlistPageOnePage;
      case BottomBarEnum.Starblack900:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.wishlistPageOnePage:
        return WishlistPageOnePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the profilePopupScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePopupScreen,
    );
  }
}
