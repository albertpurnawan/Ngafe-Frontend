import '../../../core/app_export.dart';

/// This class is used in the [userprofile2_item_widget] screen.
class Userprofile2ItemModel {
  Userprofile2ItemModel({
    this.namaTempat,
    this.alamat,
    this.starImage,
    this.ratingText,
    this.id,
  }) {
    namaTempat = namaTempat ?? "Nama tempat";
    alamat = alamat ?? "Alamat";
    starImage = starImage ?? ImageConstant.imgStar;
    ratingText = ratingText ?? "4,6";
    id = id ?? "";
  }

  String? namaTempat;

  String? alamat;

  String? starImage;

  String? ratingText;

  String? id;
}
