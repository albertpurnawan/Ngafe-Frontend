import '../list_page_one_screen/widgets/placeinfo_item_widget.dart';
import 'bloc/list_page_one_bloc.dart';
import 'models/list_page_one_model.dart';
import 'models/placeinfo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/presentation/wishlist_page_one_page/wishlist_page_one_page.dart';
import 'package:ngafe/widgets/app_bar/appbar_leading_image.dart';
import 'package:ngafe/widgets/app_bar/custom_app_bar.dart';
import 'package:ngafe/widgets/custom_bottom_bar.dart';
import 'package:ngafe/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ListPageOneScreen extends StatelessWidget {
  ListPageOneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ListPageOneBloc>(
        create: (context) => ListPageOneBloc(
            ListPageOneState(listPageOneModelObj: ListPageOneModel()))
          ..add(ListPageOneInitialEvent()),
        child: ListPageOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 19.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 13.h, right: 6.h),
                      child: BlocSelector<ListPageOneBloc, ListPageOneState,
                              TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_pencarian".tr);
                          })),
                  SizedBox(height: 27.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("msg_terakhir_dilihat".tr,
                              style: theme.textTheme.headlineSmall))),
                  SizedBox(height: 8.v),
                  _buildPlaceInfo(context)
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
  Widget _buildPlaceInfo(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child:
            BlocSelector<ListPageOneBloc, ListPageOneState, ListPageOneModel?>(
                selector: (state) => state.listPageOneModelObj,
                builder: (context, listPageOneModelObj) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 8.v);
                      },
                      itemCount:
                          listPageOneModelObj?.placeinfoItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        PlaceinfoItemModel model =
                            listPageOneModelObj?.placeinfoItemList[index] ??
                                PlaceinfoItemModel();
                        return PlaceinfoItemWidget(model);
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
