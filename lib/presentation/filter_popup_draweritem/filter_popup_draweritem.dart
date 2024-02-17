import 'bloc/filter_popup_bloc.dart';
import 'models/filter_popup_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/widgets/custom_drop_down.dart';
import 'package:ngafe/widgets/custom_elevated_button.dart';

class FilterPopupDraweritem extends StatelessWidget {
  const FilterPopupDraweritem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: 298.h,
            padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 23.v),
            decoration: AppDecoration.fillBlueGray,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      onTap: () {
                        onTapTxtBatal(context);
                      },
                      child: Text("lbl_batal".tr,
                          style: theme.textTheme.headlineSmall))),
              SizedBox(height: 10.v),
              Text("msg_hari_operasional".tr,
                  style: CustomTextStyles.titleLargeRoboto),
              SizedBox(height: 3.v),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgCalendar,
                        height: 23.v,
                        width: 18.h,
                        margin: EdgeInsets.only(top: 1.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 59.h, top: 3.v),
                        child: Text("lbl_setiap_hari".tr,
                            style: theme.textTheme.bodyLarge))
                  ])),
              SizedBox(height: 21.v),
              Text("lbl_jam_operasional".tr,
                  style: CustomTextStyles.titleLargeRoboto),
              SizedBox(height: 3.v),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 13.h, vertical: 14.v),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 23.v,
                        width: 20.h,
                        margin: EdgeInsets.only(top: 1.v)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 41.h, top: 1.v, bottom: 3.v),
                        child: Text("msg_09_00_s_d_21_00".tr,
                            style: theme.textTheme.bodyLarge))
                  ])),
              SizedBox(height: 19.v),
              Text("lbl_lokasi".tr, style: CustomTextStyles.titleLargeRoboto),
              SizedBox(height: 4.v),
              BlocSelector<FilterPopupBloc, FilterPopupState,
                      FilterPopupModel?>(
                  selector: (state) => state.filterPopupModelObj,
                  builder: (context, filterPopupModelObj) {
                    return CustomDropDown(
                        icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 10.v, 11.h, 10.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowdown,
                                height: 28.v,
                                width: 15.h)),
                        hintText: "msg_tangerang_selatan".tr,
                        items: filterPopupModelObj?.dropdownItemList ?? [],
                        prefix: Container(
                            margin: EdgeInsets.fromLTRB(11.h, 14.v, 30.h, 14.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgMap,
                                height: 23.adaptSize,
                                width: 23.adaptSize)),
                        prefixConstraints: BoxConstraints(maxHeight: 52.v),
                        onChanged: (value) {
                          context
                              .read<FilterPopupBloc>()
                              .add(ChangeDropDownEvent(value: value));
                        });
                  }),
              SizedBox(height: 20.v),
              Text("lbl_jarak".tr, style: CustomTextStyles.titleLargeRoboto),
              SizedBox(height: 13.v),
              Container(
                  height: 23.v,
                  width: 242.h,
                  margin: EdgeInsets.only(left: 6.h),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(width: 242.h, child: Divider())),
                    CustomImageView(
                        imagePath: ImageConstant.imgLocation,
                        height: 23.v,
                        width: 15.h,
                        alignment: Alignment.center),
                    CustomImageView(
                        imagePath: ImageConstant.imgRefresh,
                        height: 17.v,
                        width: 30.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(top: 2.v)),
                    CustomImageView(
                        imagePath: ImageConstant.imgRefresh,
                        height: 17.v,
                        width: 39.h,
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.only(top: 2.v))
                  ])),
              SizedBox(height: 4.v),
              CustomImageView(
                  imagePath: ImageConstant.imgRefresh,
                  height: 17.v,
                  width: 40.h,
                  alignment: Alignment.center),
              SizedBox(height: 18.v),
              Text("msg_urutkan_berdasarkan".tr,
                  style: CustomTextStyles.titleLargeRoboto),
              SizedBox(height: 4.v),
              BlocSelector<FilterPopupBloc, FilterPopupState,
                      FilterPopupModel?>(
                  selector: (state) => state.filterPopupModelObj,
                  builder: (context, filterPopupModelObj) {
                    return CustomDropDown(
                        icon: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 9.v, 11.h, 9.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgArrowdown,
                                height: 28.v,
                                width: 15.h)),
                        hintText: "lbl_ulasan_terbaik".tr,
                        items: filterPopupModelObj?.dropdownItemList1 ?? [],
                        prefix: Container(
                            margin: EdgeInsets.fromLTRB(11.h, 13.v, 30.h, 13.v),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgStarBlack900,
                                height: 23.adaptSize,
                                width: 23.adaptSize)),
                        prefixConstraints: BoxConstraints(maxHeight: 52.v),
                        onChanged: (value) {
                          context
                              .read<FilterPopupBloc>()
                              .add(ChangeDropDown1Event(value: value));
                        });
                  }),
              Spacer(),
              CustomElevatedButton(
                  height: 57.v,
                  text: "lbl_selesai".tr,
                  buttonStyle: CustomButtonStyles.fillWhiteA,
                  buttonTextStyle: theme.textTheme.headlineSmall!,
                  onPressed: () {
                    onTapSelesai(context);
                  })
            ])));
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapTxtBatal(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapSelesai(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }
}
