import '../home_page_screen/widgets/recentorders_item_widget.dart';
import 'bloc/home_page_bloc.dart';
import 'models/home_page_model.dart';
import 'models/recentorders_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/presentation/wishlist_page_one_page/wishlist_page_one_page.dart';
import 'package:ngafe/widgets/app_bar/appbar_subtitle.dart';
import 'package:ngafe/widgets/app_bar/custom_app_bar.dart';
import 'package:ngafe/widgets/custom_bottom_bar.dart';
import 'package:ngafe/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageBloc>(
        create: (context) =>
            HomePageBloc(HomePageState(homePageModelObj: HomePageModel()))
              ..add(HomePageInitialEvent()),
        child: HomePageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 19.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              height: 725.v,
                              width: 339.h,
                              margin: EdgeInsets.only(left: 21.h),
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      right: 15.h),
                                                  child: BlocSelector<
                                                          HomePageBloc,
                                                          HomePageState,
                                                          TextEditingController?>(
                                                      selector: (state) => state
                                                          .searchController,
                                                      builder: (context,
                                                          searchController) {
                                                        return CustomSearchView(
                                                            controller:
                                                                searchController,
                                                            hintText:
                                                                "lbl_pencarian"
                                                                    .tr,
                                                            contentPadding:
                                                                EdgeInsets.symmetric(
                                                                    horizontal:
                                                                        20.h,
                                                                    vertical:
                                                                        10.v));
                                                      })),
                                              SizedBox(height: 27.v),
                                              Text("msg_terakhir_dilihat".tr,
                                                  style: theme
                                                      .textTheme.headlineSmall),
                                              SizedBox(height: 16.v),
                                              _buildRecentOrders(context),
                                              SizedBox(height: 11.v),
                                              _buildUserProfile(context)
                                            ])),
                                    Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                24.h, 651.v, 43.h, 15.v),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtHeart(context);
                                                      },
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 11.v,
                                                                  bottom: 10.v),
                                                          child: Text(
                                                              "lbl_heart".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineLarge))),
                                                  SizedBox(
                                                      height: 59.v,
                                                      width: 60.h,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    height:
                                                                        59.v,
                                                                    width: 60.h,
                                                                    decoration: BoxDecoration(
                                                                        color: theme
                                                                            .colorScheme
                                                                            .primary,
                                                                        borderRadius:
                                                                            BorderRadius.circular(30.h)))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                    "lbl_home"
                                                                        .tr,
                                                                    style: CustomTextStyles
                                                                        .headlineLargeWhiteA700))
                                                          ])),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtStar(context);
                                                      },
                                                      child: Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 11.v,
                                                                  bottom: 10.v),
                                                          child: Text(
                                                              "lbl_star".tr,
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineLarge)))
                                                ])))
                                  ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
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
  Widget _buildRecentOrders(BuildContext context) {
    return BlocSelector<HomePageBloc, HomePageState, HomePageModel?>(
        selector: (state) => state.homePageModelObj,
        builder: (context, homePageModelObj) {
          return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 194.v,
                  crossAxisCount: 2,
                  mainAxisSpacing: 23.h,
                  crossAxisSpacing: 23.h),
              physics: NeverScrollableScrollPhysics(),
              itemCount: homePageModelObj?.recentordersItemList.length ?? 0,
              itemBuilder: (context, index) {
                RecentordersItemModel model =
                    homePageModelObj?.recentordersItemList[index] ??
                        RecentordersItemModel();
                return RecentordersItemWidget(model);
              });
        });
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 11.h, right: 29.h),
        child: Row(children: [
          Text("msg_ingin_menambahkan".tr,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMedium15),
          GestureDetector(
              onTap: () {
                onTapTxtTambahkandisini(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(left: 3.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_t".tr,
                            style: CustomTextStyles.bodyMediumffff0000),
                        TextSpan(
                            text: "lbl_ambahkan_disini".tr,
                            style: CustomTextStyles.bodyMediumffff0000)
                      ]),
                      textAlign: TextAlign.center)))
        ]));
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

  /// Navigates to the addCafePageScreen when the action is triggered.
  onTapTxtTambahkandisini(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.addCafePageScreen,
    );
  }

  /// Navigates to the wishlistPageScreen when the action is triggered.
  onTapTxtHeart(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.wishlistPageScreen,
    );
  }

  /// Navigates to the favoritPageScreen when the action is triggered.
  onTapTxtStar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.favoritPageScreen,
    );
  }
}
