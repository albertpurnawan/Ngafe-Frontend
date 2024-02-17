import 'bloc/reset_page_bloc.dart';
import 'models/reset_page_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/widgets/custom_text_form_field.dart';

class ResetPageScreen extends StatelessWidget {
  const ResetPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPageBloc>(
        create: (context) =>
            ResetPageBloc(ResetPageState(resetPageModelObj: ResetPageModel()))
              ..add(ResetPageInitialEvent()),
        child: ResetPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 1080.v,
                        width: double.maxFinite,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  height: 1080.v,
                                  width: 1108.h,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgSplashbg1),
                                          fit: BoxFit.cover)))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: 750.v,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(bottom: 73.v),
                                  decoration: BoxDecoration(
                                      color: appTheme.whiteA700,
                                      borderRadius:
                                          BorderRadius.circular(40.h)))),
                          Align(
                              alignment: Alignment.topLeft,
                              child: GestureDetector(
                                  onTap: () {
                                    onTapTxtText(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 18.h, top: 191.v),
                                      child: Text("lbl".tr,
                                          style: CustomTextStyles
                                              .headlineSmallFontAwesome5Free)))),
                          _buildResetPageColumn(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildResetPageColumn(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 31.h, right: 33.h, bottom: 148.v),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("lbl_reset_password".tr,
                      style: CustomTextStyles.titleLargeLato)),
              SizedBox(height: 21.v),
              SizedBox(
                  height: 61.v,
                  width: 295.h,
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    BlocSelector<ResetPageBloc, ResetPageState,
                            TextEditingController?>(
                        selector: (state) => state.passwordController,
                        builder: (context, passwordController) {
                          return CustomTextFormField(
                              width: 295.h,
                              controller: passwordController,
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center,
                              obscureText: true);
                        }),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 29.h),
                            child: Row(children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 1.v),
                                  child: Text("lbl2".tr,
                                      style:
                                          CustomTextStyles.titleLargeBlack900)),
                              Padding(
                                  padding: EdgeInsets.only(left: 17.h),
                                  child: Text("lbl_email".tr,
                                      style: CustomTextStyles
                                          .titleLargeLatoBlack900))
                            ])))
                  ])),
              SizedBox(height: 375.v),
              SizedBox(
                  height: 61.v,
                  width: 295.h,
                  child: Stack(alignment: Alignment.centerLeft, children: [
                    Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                            onTap: () {
                              onTapView(context);
                            },
                            child: Container(
                                height: 61.v,
                                width: 295.h,
                                decoration: BoxDecoration(
                                    color: theme.colorScheme.primary,
                                    borderRadius:
                                        BorderRadius.circular(20.h))))),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 113.h),
                            child: Text("lbl_kirim".tr,
                                style: CustomTextStyles
                                    .headlineSmallLatoWhiteA700)))
                  ])),
              SizedBox(height: 67.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_copyright".tr,
                        style: theme.textTheme.bodySmall),
                    TextSpan(
                        text: "lbl_copyright".tr,
                        style: CustomTextStyles.bodySmallFontAwesome5Free),
                    TextSpan(
                        text: "msg_jonathan_albert".tr,
                        style: theme.textTheme.bodySmall)
                  ]),
                  textAlign: TextAlign.left)
            ])));
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapTxtText(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }
}
