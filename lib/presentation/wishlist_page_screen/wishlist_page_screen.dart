import '../wishlist_page_screen/widgets/thirtyfour_item_widget.dart';
import 'bloc/wishlist_page_bloc.dart';
import 'models/thirtyfour_item_model.dart';
import 'models/wishlist_page_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/widgets/app_bar/appbar_leading_image.dart';
import 'package:ngafe/widgets/app_bar/custom_app_bar.dart';
import 'package:ngafe/widgets/custom_search_view.dart';

class WishlistPageScreen extends StatelessWidget {
  const WishlistPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WishlistPageBloc>(
        create: (context) => WishlistPageBloc(
            WishlistPageState(wishlistPageModelObj: WishlistPageModel()))
          ..add(WishlistPageInitialEvent()),
        child: WishlistPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 19.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 7.h),
                      child: BlocSelector<WishlistPageBloc, WishlistPageState,
                              TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_pencarian".tr);
                          })),
                  SizedBox(height: 26.v),
                  _buildSixtySix(context),
                  SizedBox(height: 32.v),
                  _buildThirtyFour(context)
                ])),
            bottomNavigationBar: _buildView(context)));
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
  Widget _buildSixtySix(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 6.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text("lbl_wishlist".tr,
                  style: theme.textTheme.headlineSmall)),
          SizedBox(
              height: 30.v,
              width: 99.h,
              child: Stack(alignment: Alignment.center, children: [
                Align(
                    alignment: Alignment.center,
                    child: Container(
                        height: 30.v,
                        width: 99.h,
                        decoration: BoxDecoration(
                            color: appTheme.green500,
                            borderRadius: BorderRadius.circular(15.h)))),
                Align(
                    alignment: Alignment.center,
                    child: Text("lbl_new".tr, style: theme.textTheme.bodyLarge))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildThirtyFour(BuildContext context) {
    return SizedBox(
        height: 176.v,
        child: BlocSelector<WishlistPageBloc, WishlistPageState,
                WishlistPageModel?>(
            selector: (state) => state.wishlistPageModelObj,
            builder: (context, wishlistPageModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 22.h, right: 14.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 14.h);
                  },
                  itemCount:
                      wishlistPageModelObj?.thirtyfourItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ThirtyfourItemModel model =
                        wishlistPageModelObj?.thirtyfourItemList[index] ??
                            ThirtyfourItemModel();
                    return ThirtyfourItemWidget(model, onTapThirtyFour: () {
                      onTapThirtyFour(context);
                    });
                  });
            }));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return SizedBox(
        height: 74.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 74.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: appTheme.whiteA700))),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 44.h, vertical: 7.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgFavoritePrimary,
                            height: 37.v,
                            width: 34.h,
                            margin: EdgeInsets.only(top: 11.v, bottom: 10.v)),
                        SizedBox(
                            height: 59.v,
                            width: 60.h,
                            child:
                                Stack(alignment: Alignment.center, children: [
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
                                              color: theme.colorScheme.primary,
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
                                padding:
                                    EdgeInsets.only(top: 11.v, bottom: 10.v),
                                child: Text("lbl_star".tr,
                                    style: theme.textTheme.headlineLarge)))
                      ])))
        ]));
  }

  /// Navigates to the wishlistPageOneContainerScreen when the action is triggered.
  onTapThirtyFour(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.wishlistPageOneContainerScreen);
  }

  /// Navigates to the profilePopupScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePopupScreen,
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
