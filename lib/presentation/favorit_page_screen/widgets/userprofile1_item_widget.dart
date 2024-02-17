import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 71.v,
      width: 340.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 71.v,
              width: 340.h,
              decoration: BoxDecoration(
                color: theme.colorScheme.onPrimaryContainer,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 71.v,
              width: 340.h,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 71.v,
                      width: 340.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
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
                            padding: EdgeInsets.only(left: 4.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  userprofile1ItemModelObj.namaTempat!,
                                  style: theme.textTheme.bodyLarge,
                                ),
                                Text(
                                  userprofile1ItemModelObj.alamat!,
                                  style: theme.textTheme.bodyMedium,
                                ),
                                SizedBox(height: 3.v),
                                Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(bottom: 1.v),
                                      child: Text(
                                        userprofile1ItemModelObj.star!,
                                        style: theme.textTheme.labelLarge,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 2.h),
                                      child: Text(
                                        userprofile1ItemModelObj.fortySix!,
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
            ),
          ),
        ],
      ),
    );
  }
}
