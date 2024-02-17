import 'package:flutter/material.dart';
import 'package:ngafe/presentation/splash_page_screen/splash_page_screen.dart';
import 'package:ngafe/presentation/reset_page_screen/reset_page_screen.dart';
import 'package:ngafe/presentation/register_page_one_screen/register_page_one_screen.dart';
import 'package:ngafe/presentation/profile_popup_screen/profile_popup_screen.dart';
import 'package:ngafe/presentation/wishlist_page_one_container_screen/wishlist_page_one_container_screen.dart';
import 'package:ngafe/presentation/list_page_three_screen/list_page_three_screen.dart';
import 'package:ngafe/presentation/login_page_screen/login_page_screen.dart';
import 'package:ngafe/presentation/register_page_screen/register_page_screen.dart';
import 'package:ngafe/presentation/home_page_screen/home_page_screen.dart';
import 'package:ngafe/presentation/wishlist_page_screen/wishlist_page_screen.dart';
import 'package:ngafe/presentation/favorit_page_screen/favorit_page_screen.dart';
import 'package:ngafe/presentation/detail_page_tab_container_screen/detail_page_tab_container_screen.dart';
import 'package:ngafe/presentation/list_page_one_screen/list_page_one_screen.dart';
import 'package:ngafe/presentation/add_cafe_page_screen/add_cafe_page_screen.dart';
import 'package:ngafe/presentation/list_page_two_screen/list_page_two_screen.dart';
import 'package:ngafe/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashPageScreen = '/splash_page_screen';

  static const String resetPageScreen = '/reset_page_screen';

  static const String registerPageOneScreen = '/register_page_one_screen';

  static const String profilePopupScreen = '/profile_popup_screen';

  static const String wishlistPageOnePage = '/wishlist_page_one_page';

  static const String wishlistPageOneContainerScreen =
      '/wishlist_page_one_container_screen';

  static const String listPageThreeScreen = '/list_page_three_screen';

  static const String loginPageScreen = '/login_page_screen';

  static const String registerPageScreen = '/register_page_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String wishlistPageScreen = '/wishlist_page_screen';

  static const String favoritPageScreen = '/favorit_page_screen';

  static const String detailPageOnePage = '/detail_page_one_page';

  static const String detailPage = '/detail_page';

  static const String detailPageTabContainerScreen =
      '/detail_page_tab_container_screen';

  static const String listPageOneScreen = '/list_page_one_screen';

  static const String addCafePageScreen = '/add_cafe_page_screen';

  static const String listPageTwoScreen = '/list_page_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashPageScreen: SplashPageScreen.builder,
        resetPageScreen: ResetPageScreen.builder,
        registerPageOneScreen: RegisterPageOneScreen.builder,
        profilePopupScreen: ProfilePopupScreen.builder,
        wishlistPageOneContainerScreen: WishlistPageOneContainerScreen.builder,
        listPageThreeScreen: ListPageThreeScreen.builder,
        loginPageScreen: LoginPageScreen.builder,
        registerPageScreen: RegisterPageScreen.builder,
        homePageScreen: HomePageScreen.builder,
        wishlistPageScreen: WishlistPageScreen.builder,
        favoritPageScreen: FavoritPageScreen.builder,
        detailPageTabContainerScreen: DetailPageTabContainerScreen.builder,
        listPageOneScreen: ListPageOneScreen.builder,
        addCafePageScreen: AddCafePageScreen.builder,
        listPageTwoScreen: ListPageTwoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashPageScreen.builder
      };
}
