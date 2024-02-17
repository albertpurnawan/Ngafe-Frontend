import 'bloc/profile_popup_bloc.dart';
import 'models/profile_popup_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:ngafe/core/app_export.dart';

class ProfilePopupScreen extends StatelessWidget {
  const ProfilePopupScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfilePopupBloc>(
      create: (context) => ProfilePopupBloc(ProfilePopupState(
        profilePopupModelObj: ProfilePopupModel(),
      ))
        ..add(ProfilePopupInitialEvent()),
      child: ProfilePopupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfilePopupBloc, ProfilePopupState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: SizedBox(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildPopularSection(context),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 74.v,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: appTheme.whiteA700,
                          ),
                        ),
                      ),
                      _buildSearchSection(context),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(45.h, 745.v, 43.h, 17.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgFavorite,
                                height: 37.v,
                                width: 34.h,
                              ),
                              Text(
                                "lbl_home".tr,
                                style: CustomTextStyles.headlineLargeBlack,
                              ),
                              Text(
                                "lbl_star".tr,
                                style: theme.textTheme.headlineLarge,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          margin: EdgeInsets.only(
                            top: 18.v,
                            right: 15.h,
                          ),
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                            borderRadius: BorderRadius.circular(
                              18.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 21.h,
                            top: 24.v,
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 96.v),
                                child: Text(
                                  "lbl_bars".tr,
                                  style: theme.textTheme.titleLarge,
                                ),
                              ),
                              Container(
                                height: 110.adaptSize,
                                width: 110.adaptSize,
                                margin: EdgeInsets.only(
                                  left: 68.h,
                                  top: 9.v,
                                ),
                                decoration: BoxDecoration(
                                  color: appTheme.whiteA700,
                                  borderRadius: BorderRadius.circular(
                                    55.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildRecentlyViewedSection(context),
                      _buildTopSellingSection(context),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: SizeUtils.height,
                          width: 298.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 129.h,
                            top: 154.v,
                          ),
                          child: Text(
                            "lbl_nama".tr,
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 137.h,
                            top: 181.v,
                          ),
                          child: Text(
                            "lbl_email".tr,
                            style: CustomTextStyles.titleLargeRoboto,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(top: 217.v),
                          child: SizedBox(
                            width: 298.h,
                            child: Divider(
                              color: appTheme.black900,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 29.h,
                            top: 253.v,
                            right: 153.h,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text(
                                      "lbl_history".tr,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 26.h),
                                    child: Text(
                                      "msg_terakhir_dilihat".tr,
                                      style: CustomTextStyles.titleLargeRoboto,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 32.v),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 1.v),
                                    child: Text(
                                      "lbl_sign_out_alt".tr,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 27.h),
                                    child: Text(
                                      "lbl_log_out".tr,
                                      style: CustomTextStyles.titleLargeRoboto,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildPopularSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(left: 21.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_terpopuler".tr,
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 14.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 119.v,
                      width: 202.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Text(
                      "lbl_nama_tempat".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 119.v,
                          width: 202.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Text(
                          "lbl_nama_tempat".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 323.h,
        margin: EdgeInsets.fromLTRB(18.h, 83.v, 18.h, 665.v),
        padding: EdgeInsets.symmetric(
          horizontal: 20.h,
          vertical: 10.v,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadiusStyle.roundedBorder20,
          image: DecorationImage(
            image: fs.Svg(
              ImageConstant.imgGroup200,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: Text(
                "lbl_pencarian".tr,
                style: CustomTextStyles.headlineSmallBlack900,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgSearch,
              height: 28.v,
              width: 25.h,
              margin: EdgeInsets.only(right: 2.h),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentlyViewedSection(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 21.h,
          top: 162.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_terakhir_dilihat".tr,
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 16.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 119.v,
                      width: 202.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Text(
                      "lbl_nama_tempat".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 119.v,
                          width: 202.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Text(
                          "lbl_nama_tempat".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopSellingSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          bottom: 219.v,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_terlaris".tr,
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 16.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 119.v,
                      width: 202.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray100,
                      ),
                    ),
                    SizedBox(height: 13.v),
                    Text(
                      "lbl_nama_tempat".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 119.v,
                          width: 202.h,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray100,
                          ),
                        ),
                        SizedBox(height: 13.v),
                        Text(
                          "lbl_nama_tempat".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
