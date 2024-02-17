import '../../../core/app_export.dart';

/// This class is used in the [placeinfo_item_widget] screen.
class PlaceinfoItemModel {
  PlaceinfoItemModel({
    this.placeName,
    this.placeAddress,
    this.rating,
    this.id,
  }) {
    placeName = placeName ?? "Nama tempat";
    placeAddress = placeAddress ?? "Alamat";
    rating = rating ?? "4,6";
    id = id ?? "";
  }

  String? placeName;

  String? placeAddress;

  String? rating;

  String? id;
}
