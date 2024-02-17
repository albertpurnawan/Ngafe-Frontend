import '../../../core/app_export.dart';

/// This class is used in the [placecard_item_widget] screen.
class PlacecardItemModel {
  PlacecardItemModel({
    this.placeName,
    this.placeAddress,
    this.ratingText,
    this.placeName1,
    this.placeAddress1,
    this.ratingText1,
    this.id,
  }) {
    placeName = placeName ?? "Nama tempat";
    placeAddress = placeAddress ?? "Alamat";
    ratingText = ratingText ?? "4,6";
    placeName1 = placeName1 ?? "Nama tempat";
    placeAddress1 = placeAddress1 ?? "Alamat";
    ratingText1 = ratingText1 ?? "4,6";
    id = id ?? "";
  }

  String? placeName;

  String? placeAddress;

  String? ratingText;

  String? placeName1;

  String? placeAddress1;

  String? ratingText1;

  String? id;
}
