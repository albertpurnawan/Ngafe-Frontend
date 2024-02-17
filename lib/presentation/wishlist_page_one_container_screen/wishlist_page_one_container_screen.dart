import 'bloc/wishlist_page_one_container_bloc.dart';
import 'models/wishlist_page_one_container_model.dart';
import 'package:flutter/material.dart';
import 'package:ngafe/core/app_export.dart';
import 'package:ngafe/presentation/wishlist_page_one_page/wishlist_page_one_page.dart';
import 'package:ngafe/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class WishlistPageOneContainerScreen extends StatelessWidget {
  WishlistPageOneContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<WishlistPageOneContainerBloc>(
        create: (context) => WishlistPageOneContainerBloc(
            WishlistPageOneContainerState(
                wishlistPageOneContainerModelObj:
                    WishlistPageOneContainerModel()))
          ..add(WishlistPageOneContainerInitialEvent()),
        child: WishlistPageOneContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WishlistPageOneContainerBloc,
        WishlistPageOneContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.wishlistPageOnePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
