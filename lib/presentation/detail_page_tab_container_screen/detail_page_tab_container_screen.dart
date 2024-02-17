import 'bloc/detail_page_tab_container_bloc.dart';
import 'models/detail_page_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/presentation/detail_page_one_page/detail_page_one_page.dart';
import 'package:ngafe/presentation/wishlist_page_one_page/wishlist_page_one_page.dart';
import 'package:ngafe/widgets/app_bar/appbar_title.dart';
import 'package:ngafe/widgets/app_bar/custom_app_bar.dart';
import 'package:ngafe/widgets/custom_bottom_bar.dart';

class DetailPageTabContainerScreen extends StatefulWidget {
  const DetailPageTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  DetailPageTabContainerScreenState createState() =>
      DetailPageTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<DetailPageTabContainerBloc>(
      create: (context) =>
          DetailPageTabContainerBloc(DetailPageTabContainerState(
        detailPageTabContainerModelObj: DetailPageTabContainerModel(),
      ))
            ..add(DetailPageTabContainerInitialEvent()),
      child: DetailPageTabContainerScreen(),
    );
  }
}

class DetailPageTabContainerScreenState
    extends State<DetailPageTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailPageTabContainerBloc, DetailPageTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildMainStack(context),
                  _buildDetailScrollView(context),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildMainStack(BuildContext context) {
    return SizedBox(
      height: 360.adaptSize,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 360.adaptSize,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 13.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomAppBar(
                    height: 23.v,
                    title: AppbarTitle(
                      text: "lbl_reply".tr,
                      margin: EdgeInsets.only(left: 20.h),
                    ),
                  ),
                  SizedBox(height: 111.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_angle_left".tr,
                        style: theme.textTheme.displaySmall,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 16.v),
                        child: Text(
                          "lbl_foto_tempat".tr,
                          style: CustomTextStyles.titleLargeRoboto,
                        ),
                      ),
                      Text(
                        "lbl_angle_right".tr,
                        style: theme.textTheme.displaySmall,
                      ),
                    ],
                  ),
                  SizedBox(height: 121.v),
                  Text(
                    "lbl_1_1".tr,
                    style: CustomTextStyles.titleLargeRobotoWhiteA700,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDetailScrollView(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 366.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 366.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                  Container(
                    height: 69.v,
                    width: 322.h,
                    margin: EdgeInsets.only(top: 9.v),
                    child: TabBar(
                      controller: tabviewController,
                      labelPadding: EdgeInsets.zero,
                      labelColor: theme.colorScheme.primary,
                      unselectedLabelColor: appTheme.whiteA700,
                      tabs: [
                        Tab(
                          child: Text(
                            "lbl_detail".tr,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_ulasan".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 288.v,
              child: TabBarView(
                controller: tabviewController,
                children: [
                  DetailPageOnePage.builder(context),
                  DetailPageOnePage.builder(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
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
}
