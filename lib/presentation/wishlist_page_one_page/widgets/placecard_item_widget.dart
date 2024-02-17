import '../models/placecard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';

// ignore: must_be_immutable
class PlacecardItemWidget extends StatelessWidget {
  PlacecardItemWidget(
    this.placecardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlacecardItemModel placecardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 71.v,
      width: 340.h,
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 11.h,
                bottom: 4.v,
              ),
              child: Row(
                children: [
                  Container(
                    height: 59.v,
                    width: 86.h,
                    decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          placecardItemModelObj.placeName!,
                          style: theme.textTheme.bodyLarge,
                        ),
                        Text(
                          placecardItemModelObj.placeAddress!,
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 3.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgStar,
                              height: 15.adaptSize,
                              width: 15.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                placecardItemModelObj.ratingText!,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 11.h,
                vertical: 4.v,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 59.v,
                    width: 86.h,
                    margin: EdgeInsets.only(top: 4.v),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 5.h,
                      top: 4.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          placecardItemModelObj.placeName1!,
                          style: theme.textTheme.bodyLarge,
                        ),
                        Text(
                          placecardItemModelObj.placeAddress1!,
                          style: theme.textTheme.bodyMedium,
                        ),
                        SizedBox(height: 3.v),
                        Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgStar,
                              height: 15.adaptSize,
                              width: 15.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 3.h),
                              child: Text(
                                placecardItemModelObj.ratingText1!,
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
