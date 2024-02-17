import 'bloc/register_page_one_bloc.dart';
import 'models/register_page_one_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';

class RegisterPageOneScreen extends StatelessWidget {
  const RegisterPageOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<RegisterPageOneBloc>(
        create: (context) => RegisterPageOneBloc(RegisterPageOneState(
            registerPageOneModelObj: RegisterPageOneModel()))
          ..add(RegisterPageOneInitialEvent()),
        child: RegisterPageOneScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterPageOneBloc, RegisterPageOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: SingleChildScrollView(
                      child: SizedBox(
                          height: 1080.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
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
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 19.h,
                                            right: 19.h,
                                            bottom: 150.v),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 13.h),
                                                      child: Text(
                                                          "lbl_bantuan".tr,
                                                          style: CustomTextStyles
                                                              .titleLargeLato))),
                                              SizedBox(height: 39.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 13.h, right: 9.h),
                                                  child: _buildFiftyFive(
                                                      context,
                                                      dynamicText:
                                                          "msg_cara_penggunaan"
                                                              .tr,
                                                      dynamicText1:
                                                          "lbl_chevron_down"
                                                              .tr)),
                                              SizedBox(height: 4.v),
                                              Divider(),
                                              SizedBox(height: 27.v),
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 13.h, right: 9.h),
                                                  child: _buildFiftyFive(
                                                      context,
                                                      dynamicText:
                                                          "msg_cara_menambahkan"
                                                              .tr,
                                                      dynamicText1:
                                                          "lbl_chevron_down"
                                                              .tr)),
                                              SizedBox(height: 3.v),
                                              Divider(),
                                              SizedBox(height: 33.v),
                                              Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 11.h),
                                                  child: _buildFiftyFive(
                                                      context,
                                                      dynamicText:
                                                          "msg_kesalahan_pada_aplikasi"
                                                              .tr,
                                                      dynamicText1:
                                                          "lbl_chevron_down"
                                                              .tr)),
                                              SizedBox(height: 3.v),
                                              Divider(),
                                              SizedBox(height: 402.v),
                                              RichText(
                                                  text: TextSpan(children: [
                                                    TextSpan(
                                                        text:
                                                            "lbl_copyright".tr,
                                                        style: theme.textTheme
                                                            .bodySmall),
                                                    TextSpan(
                                                        text:
                                                            "lbl_copyright".tr,
                                                        style: CustomTextStyles
                                                            .bodySmallFontAwesome5Free),
                                                    TextSpan(
                                                        text:
                                                            "msg_jonathan_albert"
                                                                .tr,
                                                        style: theme.textTheme
                                                            .bodySmall)
                                                  ]),
                                                  textAlign: TextAlign.left)
                                            ]))),
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
                                                    .headlineSmallFontAwesome5Free))))
                              ]))))));
    });
  }

  /// Common widget
  Widget _buildFiftyFive(
    BuildContext context, {
    required String dynamicText,
    required String dynamicText1,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 3.v),
          child: Text(dynamicText,
              style: CustomTextStyles.bodyLargeLato
                  .copyWith(color: appTheme.black900))),
      Padding(
          padding: EdgeInsets.only(left: 64.h),
          child: Text(dynamicText1,
              style: theme.textTheme.titleLarge!
                  .copyWith(color: appTheme.black900)))
    ]);
  }

  /// Navigates to the registerPageScreen when the action is triggered.
  onTapTxtText(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.registerPageScreen,
    );
  }
}
