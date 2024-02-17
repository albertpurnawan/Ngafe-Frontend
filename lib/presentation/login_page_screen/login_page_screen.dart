import 'bloc/login_page_bloc.dart';
import 'models/login_page_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/widgets/custom_text_form_field.dart';

class LoginPageScreen extends StatelessWidget {
  const LoginPageScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginPageBloc>(
        create: (context) =>
            LoginPageBloc(LoginPageState(loginPageModelObj: LoginPageModel()))
              ..add(LoginPageInitialEvent()),
        child: LoginPageScreen());
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
                          _buildLoginForm(context),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 31.h, right: 31.h, bottom: 148.v),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        _buildWelcomeBackSection(context),
                                        SizedBox(height: 52.v),
                                        RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_copyright".tr,
                                                  style: theme
                                                      .textTheme.bodySmall),
                                              TextSpan(
                                                  text: "lbl_copyright".tr,
                                                  style: CustomTextStyles
                                                      .bodySmallFontAwesome5Free),
                                              TextSpan(
                                                  text:
                                                      "msg_jonathan_albert".tr,
                                                  style:
                                                      theme.textTheme.bodySmall)
                                            ]),
                                            textAlign: TextAlign.left)
                                      ])))
                        ]))))));
  }

  /// Section Widget
  Widget _buildLoginForm(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Padding(
            padding: EdgeInsets.fromLTRB(18.h, 191.v, 22.h, 857.v),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 3.v),
                      child: Text("lbl".tr,
                          style:
                              CustomTextStyles.headlineSmallFontAwesome5Free)),
                  GestureDetector(
                      onTap: () {
                        onTapTxtLupaPassword(context);
                      },
                      child: Padding(
                          padding: EdgeInsets.only(top: 11.v),
                          child: Text("lbl_lupa_password".tr,
                              style: CustomTextStyles.bodyLargeLato)))
                ])));
  }

  /// Section Widget
  Widget _buildWelcomeBackSection(BuildContext context) {
    return SizedBox(
        height: 559.v,
        width: 296.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_ayo_mulai_pencarian".tr,
                        style: CustomTextStyles.titleLargeLato),
                    SizedBox(height: 168.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: BlocSelector<LoginPageBloc, LoginPageState,
                                TextEditingController?>(
                            selector: (state) => state.editTextController,
                            builder: (context, editTextController) {
                              return CustomTextFormField(
                                  controller: editTextController);
                            })),
                    SizedBox(height: 36.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: BlocSelector<LoginPageBloc, LoginPageState,
                                TextEditingController?>(
                            selector: (state) => state.editTextController1,
                            builder: (context, editTextController1) {
                              return CustomTextFormField(
                                  controller: editTextController1,
                                  textInputAction: TextInputAction.done,
                                  obscureText: true);
                            })),
                    SizedBox(height: 30.v),
                    Padding(
                        padding: EdgeInsets.only(left: 1.h, right: 10.h),
                        child: Row(children: [
                          Padding(
                              padding: EdgeInsets.only(top: 1.v),
                              child: Text("msg_belum_punya_akun".tr,
                                  style: CustomTextStyles.titleLargeLato)),
                          GestureDetector(
                              onTap: () {
                                onTapTxtDaftarDisini(context);
                              },
                              child: Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text("lbl_daftar_disini".tr,
                                      style: CustomTextStyles
                                          .titleLargeLatoOnPrimary)))
                        ])),
                    SizedBox(height: 89.v),
                    Container(
                        height: 61.v,
                        width: 295.h,
                        margin: EdgeInsets.only(left: 1.h),
                        child: Stack(alignment: Alignment.center, children: [
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
                              alignment: Alignment.center,
                              child: Text("lbl_masuk".tr,
                                  style: CustomTextStyles
                                      .headlineSmallLatoWhiteA700))
                        ]))
                  ])),
          Align(
              alignment: Alignment.topLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 2.h, top: 30.v, right: 111.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("msg_selamat_datang_kembali".tr,
                            style: CustomTextStyles
                                .bodyMediumLatoSecondaryContainer),
                        SizedBox(height: 19.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  height: 51.v,
                                  width: 50.h,
                                  margin: EdgeInsets.symmetric(vertical: 10.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(ImageConstant
                                              .imgGoogleLogo982551x50),
                                          fit: BoxFit.cover))),
                              SizedBox(
                                  height: 72.v,
                                  width: 127.h,
                                  child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                height: 60.adaptSize,
                                                width: 60.adaptSize,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant
                                                                .imgLogoFacebookpng3220260x60),
                                                        fit: BoxFit.cover)))),
                                        Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                height: 72.adaptSize,
                                                width: 72.adaptSize,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            ImageConstant
                                                                .img512x512Logo2716072x72),
                                                        fit: BoxFit.cover))))
                                      ]))
                            ]),
                        SizedBox(height: 72.v),
                        Padding(
                            padding: EdgeInsets.only(left: 28.h),
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
                            ])),
                        SizedBox(height: 72.v),
                        Padding(
                            padding: EdgeInsets.only(left: 28.h),
                            child: Row(children: [
                              Text("lbl_lock".tr,
                                  style: CustomTextStyles.titleLargeBlack900),
                              Padding(
                                  padding: EdgeInsets.only(left: 17.h),
                                  child: Text("lbl_password".tr,
                                      style: CustomTextStyles
                                          .titleLargeLatoBlack900))
                            ]))
                      ])))
        ]));
  }

  /// Navigates to the resetPageScreen when the action is triggered.
  onTapTxtLupaPassword(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.resetPageScreen,
    );
  }

  /// Navigates to the registerPageScreen when the action is triggered.
  onTapTxtDaftarDisini(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerPageScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }
}
