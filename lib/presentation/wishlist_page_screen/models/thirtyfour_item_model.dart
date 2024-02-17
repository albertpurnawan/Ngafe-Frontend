import '../../../core/app_export.dart';

/// This class is used in the [thirtyfour_item_widget] screen.
class ThirtyfourItemModel {
  ThirtyfourItemModel({
    this.wishlistName,
    this.ellipsisIcon,
    this.tempatText,
    this.id,
  }) {
    wishlistName = wishlistName ?? "Nama wishlist";
    ellipsisIcon = ellipsisIcon ?? "ellipsis-v";
    tempatText = tempatText ?? "10 Tempat";
    id = id ?? "";
  }

  String? wishlistName;

  String? ellipsisIcon;

  String? tempatText;

  String? id;
}
