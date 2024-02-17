import 'bloc/register_page_bloc.dart';
import 'models/register_page_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/core/utils/validation_functions.dart';
import 'package:ngafe/widgets/app_bar/appbar_leading_image.dart';
import 'package:ngafe/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ngafe/widgets/app_bar/custom_app_bar.dart';
import 'package:ngafe/widgets/custom_elevated_button.dart';
import 'package:ngafe/widgets/custom_icon_button.dart';
import 'package:ngafe/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class RegisterPageScreen extends StatelessWidget {
  RegisterPageScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterPageBloc>(
        create: (context) => RegisterPageBloc(
            RegisterPageState(registerPageModelObj: RegisterPageModel()))
          ..add(RegisterPageInitialEvent()),
        child: RegisterPageScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: appTheme.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgSplashPage),
                        fit: BoxFit.cover)),
                child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                        padding: EdgeInsets.only(top: 22.v),
                        child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 31.h, vertical: 48.v),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder40),
                            child: Column(children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_ayo_mulai_pencarian".tr,
                                      style: CustomTextStyles.titleLargeLato)),
                              SizedBox(height: 6.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("msg_selamat_datang_kembali".tr,
                                      style: CustomTextStyles
                                          .bodyMediumLatoSecondaryContainer)),
                              SizedBox(height: 19.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Row(children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgGoogleLogo9825,
                                        height: 51.v,
                                        width: 50.h,
                                        margin: EdgeInsets.symmetric(
                                            vertical: 10.v)),
                                    Container(
                                        height: 72.v,
                                        width: 127.h,
                                        margin: EdgeInsets.only(left: 6.h),
                                        child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              CustomIconButton(
                                                  height: 60.adaptSize,
                                                  width: 60.adaptSize,
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgLogoFacebookpng32202)),
                                              CustomIconButton(
                                                  height: 72.adaptSize,
                                                  width: 72.adaptSize,
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .img512x512Logo27160))
                                            ]))
                                  ])),
                              _buildNameEditText(context),
                              SizedBox(height: 13.v),
                              _buildEmailEditText(context),
                              SizedBox(height: 13.v),
                              _buildPasswordEditText(context),
                              SizedBox(height: 13.v),
                              _buildConfirmPasswordEditText(context),
                              SizedBox(height: 20.v),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(right: 19.h),
                                      child: Row(children: [
                                        Text("msg_sudah_punya_akun".tr,
                                            style: CustomTextStyles
                                                .titleLargeLato),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtLoginDisini(context);
                                            },
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10.h),
                                                child: Text(
                                                    "lbl_login_disini".tr,
                                                    style: CustomTextStyles
                                                        .titleLargeLatoOnPrimary)))
                                      ]))),
                              SizedBox(height: 28.v),
                              _buildRegisterButton(context),
                              SizedBox(height: 48.v),
                              CustomImageView(
                                  imagePath:
                                      ImageConstant.imgCopyrightCopyright,
                                  height: 14.v,
                                  width: 243.h),
                              SizedBox(height: 29.v)
                            ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 33.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 18.h, top: 12.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft(context);
            }),
        actions: [
          AppbarSubtitleOne(
              text: "lbl_butuh_bantuan".tr,
              margin: EdgeInsets.fromLTRB(23.h, 23.v, 23.h, 12.v),
              onTap: () {
                onTapButuhBantuan(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildNameEditText(BuildContext context) {
    return BlocSelector<RegisterPageBloc, RegisterPageState,
            TextEditingController?>(
        selector: (state) => state.nameEditTextController,
        builder: (context, nameEditTextController) {
          return CustomTextFormField(
              controller: nameEditTextController,
              hintText: "lbl_nama".tr,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(28.h, 15.v, 14.h, 15.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgUserBlack90023x18,
                      height: 23.v,
                      width: 18.h)),
              prefixConstraints: BoxConstraints(maxHeight: 61.v));
        });
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return BlocSelector<RegisterPageBloc, RegisterPageState,
            TextEditingController?>(
        selector: (state) => state.emailEditTextController,
        builder: (context, emailEditTextController) {
          return CustomTextFormField(
              controller: emailEditTextController,
              hintText: "lbl_email".tr,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 17.v, 14.h, 17.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgRefresh,
                      height: 23.v,
                      width: 18.h)),
              prefixConstraints: BoxConstraints(maxHeight: 61.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return BlocSelector<RegisterPageBloc, RegisterPageState,
            TextEditingController?>(
        selector: (state) => state.passwordEditTextController,
        builder: (context, passwordEditTextController) {
          return CustomTextFormField(
              controller: passwordEditTextController,
              hintText: "lbl_password".tr,
              textInputType: TextInputType.visiblePassword,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(29.h, 19.v, 14.h, 19.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLock,
                      height: 23.v,
                      width: 18.h)),
              prefixConstraints: BoxConstraints(maxHeight: 61.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true);
        });
  }

  /// Section Widget
  Widget _buildConfirmPasswordEditText(BuildContext context) {
    return BlocSelector<RegisterPageBloc, RegisterPageState,
            TextEditingController?>(
        selector: (state) => state.confirmPasswordEditTextController,
        builder: (context, confirmPasswordEditTextController) {
          return CustomTextFormField(
              controller: confirmPasswordEditTextController,
              hintText: "msg_konfirmasi_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 19.v, 14.h, 19.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLock,
                      height: 23.v,
                      width: 18.h)),
              prefixConstraints: BoxConstraints(maxHeight: 61.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true);
        });
  }

  /// Section Widget
  Widget _buildRegisterButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_daftar".tr,
        onPressed: () {
          onTapRegisterButton(context);
        });
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }

  /// Navigates to the registerPageOneScreen when the action is triggered.
  onTapButuhBantuan(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerPageOneScreen,
    );
  }

  /// Navigates to the loginPageScreen when the action is triggered.
  onTapTxtLoginDisini(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginPageScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapRegisterButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }
}
