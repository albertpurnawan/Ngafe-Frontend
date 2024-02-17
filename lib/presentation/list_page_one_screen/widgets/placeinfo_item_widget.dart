import '../models/placeinfo_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';

// ignore: must_be_immutable
class PlaceinfoItemWidget extends StatelessWidget {
  PlaceinfoItemWidget(
    this.placeinfoItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PlaceinfoItemModel placeinfoItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 4.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
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
                  placeinfoItemModelObj.placeName!,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  placeinfoItemModelObj.placeAddress!,
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
                        placeinfoItemModelObj.rating!,
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
    );
  }
}
