import '../list_page_two_screen/widgets/userprofile2_item_widget.dart';
import 'bloc/list_page_two_bloc.dart';
import 'models/list_page_two_model.dart';
import 'models/userprofile2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/presentation/wishlist_page_one_page/wishlist_page_one_page.dart';
import 'package:ngafe/widgets/app_bar/appbar_leading_image.dart';
import 'package:ngafe/widgets/app_bar/custom_app_bar.dart';
import 'package:ngafe/widgets/custom_bottom_bar.dart';
import 'package:ngafe/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ListPageTwoScreen extends StatelessWidget {
  ListPageTwoScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ListPageTwoBloc>(
        create: (context) => ListPageTwoBloc(
            ListPageTwoState(listPageTwoModelObj: ListPageTwoModel()))
          ..add(ListPageTwoInitialEvent()),
        child: ListPageTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 9.h),
                child: Column(children: [
                  SizedBox(height: 19.v),
                  Padding(
                      padding: EdgeInsets.only(left: 13.h, right: 6.h),
                      child: BlocSelector<ListPageTwoBloc, ListPageTwoState,
                              TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_pencarian".tr);
                          })),
                  SizedBox(height: 29.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("lbl_terpopuler".tr,
                              style: theme.textTheme.headlineSmall))),
                  SizedBox(height: 6.v),
                  _buildUserProfile(context),
                  SizedBox(height: 69.v),
                  Padding(
                      padding: EdgeInsets.only(left: 36.h, right: 34.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  onTapTxtHeart(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 11.v, bottom: 10.v),
                                    child: Text("lbl_heart".tr,
                                        style: theme.textTheme.headlineLarge))),
                            SizedBox(
                                height: 59.v,
                                width: 60.h,
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: GestureDetector(
                                              onTap: () {
                                                onTapView1(context);
                                              },
                                              child: Container(
                                                  height: 59.v,
                                                  width: 60.h,
                                                  decoration: BoxDecoration(
                                                      color: theme
                                                          .colorScheme.primary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30.h))))),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text("lbl_home".tr,
                                              style: CustomTextStyles
                                                  .headlineLargeWhiteA700))
                                    ])),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtStar(context);
                                },
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 11.v, bottom: 10.v),
                                    child: Text("lbl_star".tr,
                                        style: theme.textTheme.headlineLarge)))
                          ]))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 39.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(left: 21.h, top: 16.v, bottom: 16.v)),
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
        padding: EdgeInsets.only(left: 2.h),
        child:
            BlocSelector<ListPageTwoBloc, ListPageTwoState, ListPageTwoModel?>(
                selector: (state) => state.listPageTwoModelObj,
                builder: (context, listPageTwoModelObj) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 8.v);
                      },
                      itemCount:
                          listPageTwoModelObj?.userprofile2ItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        Userprofile2ItemModel model =
                            listPageTwoModelObj?.userprofile2ItemList[index] ??
                                Userprofile2ItemModel();
                        return Userprofile2ItemWidget(model);
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

  /// Navigates to the wishlistPageScreen when the action is triggered.
  onTapTxtHeart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.wishlistPageScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapView1(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the favoritPageScreen when the action is triggered.
  onTapTxtStar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.favoritPageScreen,
    );
  }
}
