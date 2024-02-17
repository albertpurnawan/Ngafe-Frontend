import '../models/thirtyfour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';

// ignore: must_be_immutable
class ThirtyfourItemWidget extends StatelessWidget {
  ThirtyfourItemWidget(
    this.thirtyfourItemModelObj, {
    Key? key,
    this.onTapThirtyFour,
  }) : super(
          key: key,
        );

  ThirtyfourItemModel thirtyfourItemModelObj;

  VoidCallback? onTapThirtyFour;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140.h,
      child: GestureDetector(
        onTap: () {
          onTapThirtyFour!.call();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 140.adaptSize,
              width: 140.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.blueGray100,
              ),
            ),
            SizedBox(height: 4.v),
            Row(
              children: [
                Text(
                  thirtyfourItemModelObj.wishlistName!,
                  style: theme.textTheme.bodyLarge,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 27.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    thirtyfourItemModelObj.ellipsisIcon!,
                    style: theme.textTheme.labelMedium,
                  ),
                ),
              ],
            ),
            Text(
              thirtyfourItemModelObj.tempatText!,
              style: CustomTextStyles.bodySmallBlack900,
            ),
          ],
        ),
      ),
    );
  }
}
