import 'bloc/splash_page_bloc.dart';
import 'models/splash_page_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';

class SplashPageScreen extends StatelessWidget {
  const SplashPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SplashPageBloc>(
        create: (context) => SplashPageBloc(
            SplashPageState(splashPageModelObj: SplashPageModel()))
          ..add(SplashPageInitialEvent()),
        child: SplashPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashPageBloc, SplashPageState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              body: Container(
                  width: SizeUtils.width,
                  height: SizeUtils.height,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgSplashPage),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(horizontal: 26.h),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5.v),
                            _buildSplashPageTwo(context)
                          ])))));
    });
  }

  /// Section Widget
  Widget _buildSplashPageTwo(BuildContext context) {
    return SizedBox(
        height: 354.v,
        width: 308.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  height: 300.adaptSize,
                  width: 300.adaptSize,
                  margin: EdgeInsets.only(bottom: 8.v),
                  decoration: BoxDecoration(
                      color: appTheme.blueGray100.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(150.h)))),
          CustomImageView(
              imagePath: ImageConstant.imgAddAHeading1,
              height: 354.v,
              width: 308.h,
              alignment: Alignment.center)
        ]));
  }
}
