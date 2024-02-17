import '../wishlist_page_one_page/widgets/placecard_item_widget.dart';
import 'bloc/wishlist_page_one_bloc.dart';
import 'models/placecard_item_model.dart';
import 'models/wishlist_page_one_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/widgets/app_bar/appbar_leading_image.dart';
import 'package:ngafe/widgets/app_bar/custom_app_bar.dart';
import 'package:ngafe/widgets/custom_search_view.dart';

class WishlistPageOnePage extends StatelessWidget {
  const WishlistPageOnePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WishlistPageOneBloc>(
        create: (context) => WishlistPageOneBloc(WishlistPageOneState(
            wishlistPageOneModelObj: WishlistPageOneModel()))
          ..add(WishlistPageOneInitialEvent()),
        child: WishlistPageOnePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 9.h, vertical: 19.v),
                child: Column(children: [
                  Padding(
                      padding: EdgeInsets.only(left: 13.h, right: 6.h),
                      child: BlocSelector<WishlistPageOneBloc,
                              WishlistPageOneState, TextEditingController?>(
                          selector: (state) => state.searchController,
                          builder: (context, searchController) {
                            return CustomSearchView(
                                controller: searchController,
                                hintText: "lbl_pencarian".tr);
                          })),
                  SizedBox(height: 27.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("lbl_wishlist".tr,
                              style: theme.textTheme.headlineSmall))),
                  SizedBox(height: 8.v),
                  _buildPlaceCard(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 39.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgMenu,
            margin: EdgeInsets.only(left: 21.h, top: 16.v, bottom: 16.v)),
        actions: [
          GestureDetector(
              onTap: () {
                onTapView(context);
              },
              child: Container(
                  height: 36.adaptSize,
                  width: 36.adaptSize,
                  margin:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 10.v),
                  decoration: BoxDecoration(
                      color: appTheme.blueGray100,
                      borderRadius: BorderRadius.circular(18.h))))
        ]);
  }

  /// Section Widget
  Widget _buildPlaceCard(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: BlocSelector<WishlistPageOneBloc, WishlistPageOneState,
                WishlistPageOneModel?>(
            selector: (state) => state.wishlistPageOneModelObj,
            builder: (context, wishlistPageOneModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 8.v);
                  },
                  itemCount:
                      wishlistPageOneModelObj?.placecardItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    PlacecardItemModel model =
                        wishlistPageOneModelObj?.placecardItemList[index] ??
                            PlacecardItemModel();
                    return PlacecardItemWidget(model);
                  });
            }));
  }

  /// Navigates to the profilePopupScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profilePopupScreen,
    );
  }
}
