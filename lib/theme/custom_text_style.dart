import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodyLargeLato => theme.textTheme.bodyLarge!.lato;
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumFontAwesome5Free =>
      theme.textTheme.bodyMedium!.fontAwesome5Free.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumLatoSecondaryContainer =>
      theme.textTheme.bodyMedium!.lato.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 15.fSize,
      );
  static get bodyMediumffff0000 => theme.textTheme.bodyMedium!.copyWith(
        color: Color(0XFFFF0000),
        fontSize: 15.fSize,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
        fontSize: 11.fSize,
      );
  static get bodySmallFontAwesome5Free =>
      theme.textTheme.bodySmall!.fontAwesome5Free;
  static get bodySmallFontAwesome5FreeOnPrimary =>
      theme.textTheme.bodySmall!.fontAwesome5Free.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  // Headline text style
  static get headlineLargeBlack => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineLargeRoboto =>
      theme.textTheme.headlineLarge!.roboto.copyWith(
        fontSize: 30.fSize,
      );
  static get headlineLargeWhiteA700 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get headlineSmallFontAwesome5Free =>
      theme.textTheme.headlineSmall!.fontAwesome5Free.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get headlineSmallFontAwesome5Free_1 =>
      theme.textTheme.headlineSmall!.fontAwesome5Free;
  static get headlineSmallLatoWhiteA700 =>
      theme.textTheme.headlineSmall!.lato.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900.withOpacity(0.5),
      );
  static get titleLargeLato => theme.textTheme.titleLarge!.lato.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeLatoBlack900 =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.black900.withOpacity(0.5),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeLatoOnPrimary =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w400,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRoboto => theme.textTheme.titleLarge!.roboto.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeRobotoWhiteA700 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.whiteA700.withOpacity(0.5),
        fontWeight: FontWeight.w400,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumff000000 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFF000000),
      );
  static get titleMediumffffd700 => theme.textTheme.titleMedium!.copyWith(
        color: Color(0XFFFFD700),
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get fontAwesome5Free {
    return copyWith(
      fontFamily: 'Font Awesome 5 Free',
    );
  }
}
