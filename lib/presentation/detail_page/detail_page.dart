import 'bloc/detail_bloc.dart';
import 'models/detail_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  DetailPageState createState() => DetailPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailBloc>(
        create: (context) =>
            DetailBloc(DetailState(detailModelObj: DetailModel()))
              ..add(DetailInitialEvent()),
        child: DetailPage());
  }
}

class DetailPageState extends State<DetailPage>
    with AutomaticKeepAliveClientMixin<DetailPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailBloc, DetailState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimaryContainer,
              body: _buildScrollView(context)));
    });
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      SizedBox(height: 22.v),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("lbl_ulasan".tr,
                          style: CustomTextStyles.headlineLargeRoboto),
                      Padding(
                          padding: EdgeInsets.only(top: 13.v, bottom: 3.v),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_star2".tr,
                                    style:
                                        CustomTextStyles.titleMediumffffd700),
                                TextSpan(
                                    text: "lbl_4_6".tr,
                                    style: CustomTextStyles.titleMediumff000000)
                              ]),
                              textAlign: TextAlign.left))
                    ])),
            SizedBox(height: 32.v),
            Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(25.h))),
                      Padding(
                          padding: EdgeInsets.only(left: 18.h, top: 6.v),
                          child: _buildPengulasSection(context,
                              reviewerName: "lbl_pengulas".tr,
                              reviewDate: "lbl_tanggal_ulasan".tr)),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(top: 14.v, bottom: 16.v),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_star2".tr,
                                    style:
                                        CustomTextStyles.titleMediumffffd700),
                                TextSpan(
                                    text: "lbl_4".tr,
                                    style: CustomTextStyles.titleMediumff000000)
                              ]),
                              textAlign: TextAlign.left))
                    ])),
            SizedBox(height: 3.v),
            Container(
                width: 294.h,
                margin: EdgeInsets.only(left: 1.h, right: 27.h),
                child: Text("msg_lorem_ipsum_is_simply".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge)),
            SizedBox(height: 5.v),
            Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          decoration: BoxDecoration(
                              color: appTheme.blueGray100,
                              borderRadius: BorderRadius.circular(25.h))),
                      Padding(
                          padding: EdgeInsets.only(left: 18.h, top: 6.v),
                          child: _buildPengulasSection(context,
                              reviewerName: "lbl_pengulas".tr,
                              reviewDate: "lbl_tanggal_ulasan".tr)),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.only(top: 14.v, bottom: 16.v),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "lbl_star2".tr,
                                    style:
                                        CustomTextStyles.titleMediumffffd700),
                                TextSpan(
                                    text: "lbl_5".tr,
                                    style: CustomTextStyles.titleMediumff000000)
                              ]),
                              textAlign: TextAlign.left))
                    ])),
            SizedBox(height: 3.v),
            Container(
                width: 294.h,
                margin: EdgeInsets.only(left: 1.h, right: 27.h),
                child: Text("msg_lorem_ipsum_is_simply".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge)),
            SizedBox(height: 5.v),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                      borderRadius: BorderRadius.circular(25.h))),
              Padding(
                  padding: EdgeInsets.only(left: 18.h, top: 6.v),
                  child: _buildPengulasSection(context,
                      reviewerName: "lbl_pengulas".tr,
                      reviewDate: "lbl_tanggal_ulasan".tr)),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 15.v, bottom: 17.v),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_star2".tr,
                            style: CustomTextStyles.titleMediumffffd700),
                        TextSpan(
                            text: "lbl_5".tr,
                            style: CustomTextStyles.titleMediumff000000)
                      ]),
                      textAlign: TextAlign.left))
            ]),
            Align(
                alignment: Alignment.center,
                child: Padding(
                    padding: EdgeInsets.only(left: 27.h, right: 25.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: () {
                                onTapTxtHeart(context);
                              },
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 11.v, bottom: 10.v),
                                  child: Text("lbl_heart".tr,
                                      style: theme.textTheme.headlineLarge))),
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
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("lbl_home".tr,
                                        style: CustomTextStyles
                                            .headlineLargeWhiteA700))
                              ])),
                          GestureDetector(
                              onTap: () {
                                onTapTxtStar(context);
                              },
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(top: 11.v, bottom: 10.v),
                                  child: Text("lbl_star".tr,
                                      style: theme.textTheme.headlineLarge)))
                        ]))),
            Container(
                width: 318.h,
                margin: EdgeInsets.only(left: 1.h),
                child: Text("msg_lorem_ipsum_is_simply".tr,
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.bodyLarge)),
            SizedBox(height: 19.v),
            Text("lbl_simpan_sebagai".tr,
                style: CustomTextStyles.titleLargeRoboto),
            SizedBox(height: 148.v),
            Align(
                alignment: Alignment.centerRight,
                child: Container(
                    height: 1.v,
                    width: 147.h,
                    margin: EdgeInsets.only(right: 5.h),
                    decoration: BoxDecoration(color: appTheme.yellow500))),
            SizedBox(height: 148.v),
            Container(
                height: 1.v,
                width: 147.h,
                margin: EdgeInsets.only(left: 4.h),
                decoration: BoxDecoration(color: appTheme.red400)),
            SizedBox(height: 163.v),
            Padding(
                padding: EdgeInsets.only(left: 43.h),
                child: Text("lbl_wishlist2".tr,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyLarge)),
            SizedBox(height: 163.v),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                    padding: EdgeInsets.only(right: 47.h),
                    child: Text("lbl_favorit2".tr,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyLarge))),
            SizedBox(height: 96.v)
          ]))
    ]));
  }

  /// Common widget
  Widget _buildPengulasSection(
    BuildContext context, {
    required String reviewerName,
    required String reviewDate,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(reviewerName,
          style: CustomTextStyles.titleLargeRoboto
              .copyWith(color: appTheme.black900)),
      SizedBox(height: 2.v),
      Text(reviewDate,
          style:
              CustomTextStyles.bodyMedium15.copyWith(color: appTheme.black900))
    ]);
  }

  /// Navigates to the wishlistPageScreen when the action is triggered.
  onTapTxtHeart(BuildContext context) {
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
  onTapTxtStar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.favoritPageScreen,
    );
  }
}
