import '../../../core/app_export.dart';

/// This class is used in the [recentorders_item_widget] screen.
class RecentordersItemModel {
  RecentordersItemModel({
    this.placeName,
    this.bestSeller,
    this.id,
  }) {
    placeName = placeName ?? "Nama tempat";
    bestSeller = bestSeller ?? "Terlaris";
    id = id ?? "";
  }

  String? placeName;

  String? bestSeller;

  String? id;
}
