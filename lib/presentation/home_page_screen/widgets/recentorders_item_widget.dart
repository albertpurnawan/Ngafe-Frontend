import '../models/recentorders_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';

// ignore: must_be_immutable
class RecentordersItemWidget extends StatelessWidget {
  RecentordersItemWidget(
    this.recentordersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  RecentordersItemModel recentordersItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
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
          recentordersItemModelObj.placeName!,
          style: theme.textTheme.bodyLarge,
        ),
        SizedBox(height: 13.v),
        Text(
          recentordersItemModelObj.bestSeller!,
          style: theme.textTheme.headlineSmall,
        ),
      ],
    );
  }
}
