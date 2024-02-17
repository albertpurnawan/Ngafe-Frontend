import 'bloc/add_cafe_page_bloc.dart';
import 'models/add_cafe_page_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/presentation/wishlist_page_one_page/wishlist_page_one_page.dart';
import 'package:ngafe/widgets/app_bar/appbar_leading_image.dart';
import 'package:ngafe/widgets/app_bar/custom_app_bar.dart';
import 'package:ngafe/widgets/custom_bottom_bar.dart';
import 'package:ngafe/widgets/custom_text_form_field.dart';

class AddCafePageScreen extends StatelessWidget {
  AddCafePageScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<AddCafePageBloc>(
      create: (context) => AddCafePageBloc(AddCafePageState(
        addCafePageModelObj: AddCafePageModel(),
      ))
        ..add(AddCafePageInitialEvent()),
      child: AddCafePageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                decoration: AppDecoration.fillWhiteA,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMendaftarkanCafe,
                      height: 18.v,
                      width: 198.h,
                      margin: EdgeInsets.only(left: 3.h),
                    ),
                    SizedBox(height: 28.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup40,
                      height: 53.v,
                      width: 320.h,
                    ),
                    SizedBox(height: 18.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup41,
                      height: 53.v,
                      width: 320.h,
                    ),
                    SizedBox(height: 18.v),
                    BlocSelector<AddCafePageBloc, AddCafePageState,
                        TextEditingController?>(
                      selector: (state) => state.settingsController,
                      builder: (context, settingsController) {
                        return CustomTextFormField(
                          controller: settingsController,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 13.h,
                              vertical: 14.v,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgSettings,
                              height: 23.adaptSize,
                              width: 23.adaptSize,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 53.v,
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 18.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup42,
                      height: 53.v,
                      width: 320.h,
                    ),
                    SizedBox(height: 18.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup40,
                      height: 53.v,
                      width: 320.h,
                    ),
                    SizedBox(height: 22.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgHariOperasional,
                      height: 22.v,
                      width: 176.h,
                      margin: EdgeInsets.only(left: 1.h),
                    ),
                    SizedBox(height: 13.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgUser,
                      height: 21.v,
                      width: 81.h,
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                    SizedBox(height: 7.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevision,
                      height: 21.v,
                      width: 91.h,
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                    SizedBox(height: 7.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevisionBlack900,
                      height: 21.v,
                      width: 77.h,
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                    SizedBox(height: 7.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgUserBlack900,
                      height: 21.v,
                      width: 88.h,
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                    SizedBox(height: 7.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgSettingsBlack900,
                      height: 21.v,
                      width: 89.h,
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                    SizedBox(height: 7.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup49,
                      height: 21.v,
                      width: 83.h,
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                    SizedBox(height: 7.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup50,
                      height: 21.v,
                      width: 98.h,
                      margin: EdgeInsets.only(left: 13.h),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 359.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgReply,
        margin: EdgeInsets.fromLTRB(20.h, 16.v, 319.h, 16.v),
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
