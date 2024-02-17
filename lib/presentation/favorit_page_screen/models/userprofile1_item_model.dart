import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.namaTempat,
    this.alamat,
    this.star,
    this.fortySix,
    this.id,
  }) {
    namaTempat = namaTempat ?? "Nama tempat";
    alamat = alamat ?? "Alamat";
    star = star ?? "star";
    fortySix = fortySix ?? "4,6";
    id = id ?? "";
  }

  String? namaTempat;

  String? alamat;

  String? star;

  String? fortySix;

  String? id;
}
