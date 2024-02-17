import 'bloc/detail_page_one_bloc.dart';
import 'models/detail_page_one_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';

class DetailPageOnePage extends StatefulWidget {
  const DetailPageOnePage({Key? key}) : super(key: key);

  @override
  DetailPageOnePageState createState() => DetailPageOnePageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailPageOneBloc>(
        create: (context) => DetailPageOneBloc(
            DetailPageOneState(detailPageOneModelObj: DetailPageOneModel()))
          ..add(DetailPageOneInitialEvent()),
        child: DetailPageOnePage());
  }
}

class DetailPageOnePageState extends State<DetailPageOnePage>
    with AutomaticKeepAliveClientMixin<DetailPageOnePage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailPageOneBloc, DetailPageOneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimaryContainer,
              body: _buildScrollViewSection(context)));
    });
  }

  /// Section Widget
  Widget _buildClockSection(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("lbl_nama_tempat".tr,
                    style: CustomTextStyles.headlineLargeRoboto),
                Padding(
                    padding: EdgeInsets.only(top: 10.v, bottom: 6.v),
                    child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_star2".tr,
                              style: CustomTextStyles.titleMediumffffd700),
                          TextSpan(
                              text: "lbl_4_6".tr,
                              style: CustomTextStyles.titleMediumff000000)
                        ]),
                        textAlign: TextAlign.left))
              ]),
              SizedBox(height: 17.v),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text("lbl_map_marked_alt".tr,
                        style: CustomTextStyles.headlineLargeBlack)),
                Container(
                    height: 40.v,
                    width: 62.h,
                    margin: EdgeInsets.only(left: 7.h),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Text("lbl_alamat".tr,
                              style:
                                  CustomTextStyles.bodyMediumFontAwesome5Free)),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Text("lbl_lokasi".tr,
                              style: theme.textTheme.titleLarge))
                    ]))
              ]),
              SizedBox(height: 10.v),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 3.v, bottom: 1.v),
                    child: Text("lbl_at".tr,
                        style: CustomTextStyles.headlineLargeBlack)),
                Padding(
                    padding: EdgeInsets.only(left: 11.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_email".tr,
                              style: theme.textTheme.titleLarge),
                          SizedBox(height: 1.v),
                          Text("msg_contoh_contoh_com".tr,
                              style:
                                  CustomTextStyles.bodyMediumFontAwesome5Free)
                        ]))
              ]),
              SizedBox(height: 10.v),
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text("lbl_phone".tr,
                        style: CustomTextStyles.headlineLargeBlack)),
                Container(
                    height: 38.v,
                    width: 141.h,
                    margin: EdgeInsets.only(left: 11.h),
                    child: Stack(alignment: Alignment.topCenter, children: [
                      Align(
                          alignment: Alignment.bottomLeft,
                          child: Text("lbl_081234567890".tr,
                              style:
                                  CustomTextStyles.bodyMediumFontAwesome5Free)),
                      Align(
                          alignment: Alignment.topCenter,
                          child: Text("lbl_nomor_telepon".tr,
                              style: CustomTextStyles.titleLargeRegular))
                    ]))
              ]),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(right: 7.h),
                  child: Row(children: [
                    Text("lbl_calendar".tr,
                        style: theme.textTheme.headlineLarge),
                    Container(
                        height: 40.v,
                        width: 157.h,
                        margin: EdgeInsets.only(left: 15.h),
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Align(
                              alignment: Alignment.bottomLeft,
                              child: Text("lbl_setiap_hari".tr,
                                  style: CustomTextStyles
                                      .bodyMediumFontAwesome5Free)),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Text("msg_hari_operasional".tr,
                                  style: CustomTextStyles.titleLargeRegular))
                        ])),
                    Spacer(),
                    Padding(
                        padding: EdgeInsets.only(top: 12.v, bottom: 4.v),
                        child: Text("lbl_angle_down".tr,
                            style: theme.textTheme.titleLarge))
                  ])),
              SizedBox(height: 1.v),
              Divider()
            ]));
  }

  /// Section Widget
  Widget _buildScrollViewSection(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(height: 26.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 19.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
                height: 261.v,
                width: 322.h,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(children: [
                        Text("lbl_clock".tr,
                            style: theme.textTheme.headlineLarge),
                        Padding(
                            padding: EdgeInsets.only(left: 10.h, top: 5.v),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_jam_operasional".tr,
                                      style:
                                          CustomTextStyles.titleLargeRegular),
                                  SizedBox(height: 7.v),
                                  Text("msg_09_00_s_d_21_00".tr,
                                      style: CustomTextStyles
                                          .bodyMediumFontAwesome5Free)
                                ]))
                      ])),
                  _buildClockSection(context)
                ])),
            SizedBox(height: 7.v),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Text("lbl_angle_down".tr,
                        style: theme.textTheme.titleLarge))),
            SizedBox(height: 7.v),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgFavorite,
                              height: 37.v,
                              width: 34.h,
                              margin: EdgeInsets.only(top: 11.v, bottom: 10.v),
                              onTap: () {
                                onTapImgFavorite(context);
                              }),
                          SizedBox(
                              height: 59.v,
                              width: 60.h,
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapView(context);
                                        },
                                        child: Container(
                                            height: 59.v,
                                            width: 60.h,
                                            decoration: BoxDecoration(
                                                color:
                                                    theme.colorScheme.primary,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        30.h))))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgHome,
                                    height: 37.v,
                                    width: 36.h,
                                    alignment: Alignment.center)
                              ])),
                          CustomImageView(
                              imagePath: ImageConstant.imgStarBlack900,
                              height: 37.v,
                              width: 36.h,
                              margin: EdgeInsets.only(top: 11.v, bottom: 10.v),
                              onTap: () {
                                onTapImgImage(context);
                              })
                        ]))),
            Divider(),
            SizedBox(height: 44.v),
            Row(children: [
              Padding(
                  padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
                  child: Text("lbl_utensils".tr,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.headlineLargeBlack)),
              Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_menu".tr,
                            style: CustomTextStyles.titleLargeRegular),
                        Align(
                            alignment: Alignment.center,
                            child: Text("lbl_foto_3".tr,
                                style: CustomTextStyles
                                    .bodyMediumFontAwesome5Free))
                      ]))
            ]),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                    padding: EdgeInsets.only(right: 7.h),
                    child: Text("lbl_angle_down".tr,
                        style: theme.textTheme.titleLarge))),
            SizedBox(height: 86.v),
            Divider(),
            SizedBox(height: 94.v),
            Row(children: [
              Padding(
                  padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
                  child: Text("lbl_star".tr,
                      style: CustomTextStyles.headlineLargeBlack)),
              Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_ulasan".tr,
                            style: theme.textTheme.titleLarge),
                        Text("lbl_berikan_ulasan".tr,
                            style: CustomTextStyles.bodyMediumFontAwesome5Free)
                      ]))
            ]),
            SizedBox(height: 5.v),
            Container(
                height: 1.v,
                width: 322.h,
                decoration: BoxDecoration(color: appTheme.whiteA700)),
            SizedBox(height: 151.v),
            Padding(
                padding: EdgeInsets.only(left: 11.h),
                child: Text("msg_penjelasan_ulasan".tr,
                    style: CustomTextStyles.bodyMediumFontAwesome5Free)),
            SizedBox(height: 281.v),
            Text("msg_starstarstarstarstar".tr,
                style: CustomTextStyles.headlineSmallFontAwesome5Free_1),
            SizedBox(height: 284.v),
            Align(
                alignment: Alignment.centerRight,
                child: Container(
                    height: 1.v,
                    width: 99.h,
                    decoration:
                        BoxDecoration(color: theme.colorScheme.primary))),
            SizedBox(height: 292.v),
            Align(
                alignment: Alignment.centerRight,
                child: Text("lbl_kirim".tr,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodyMediumFontAwesome5Free)),
            SizedBox(height: 341.v),
            Text("lbl_simpan_sebagai".tr,
                style: CustomTextStyles.titleLargeRoboto),
            SizedBox(height: 9.v),
            Padding(
                padding: EdgeInsets.only(left: 4.h, right: 3.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          height: 50.v,
                          width: 147.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 50.v,
                                    width: 147.h,
                                    decoration: BoxDecoration(
                                        color: appTheme.red400,
                                        borderRadius:
                                            BorderRadius.circular(20.h)))),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_wishlist2".tr,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyLarge))
                          ])),
                      SizedBox(
                          height: 50.v,
                          width: 147.h,
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    height: 50.v,
                                    width: 147.h,
                                    decoration: BoxDecoration(
                                        color: appTheme.yellow500,
                                        borderRadius:
                                            BorderRadius.circular(20.h)))),
                            Align(
                                alignment: Alignment.center,
                                child: Text("lbl_favorit2".tr,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.bodyLarge))
                          ]))
                    ]))
          ]))
    ]));
  }

  /// Navigates to the wishlistPageScreen when the action is triggered.
  onTapImgFavorite(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.wishlistPageScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the favoritPageScreen when the action is triggered.
  onTapImgImage(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.favoritPageScreen,
    );
  }
}
