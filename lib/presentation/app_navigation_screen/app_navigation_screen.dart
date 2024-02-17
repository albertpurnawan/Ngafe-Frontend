import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle: "Splash Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Reset Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.resetPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Register Page One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.registerPageOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile popup".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profilePopupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wishlist Page One - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.wishlistPageOneContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "List Page Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.listPageThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Login Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Register Page".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.registerPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Home Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homePageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Wishlist Page".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.wishlistPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Favorit Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.favoritPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Detail Page - Tab Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.detailPageTabContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "List Page One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.listPageOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Add cafe Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.addCafePageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "List Page Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.listPageTwoScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
