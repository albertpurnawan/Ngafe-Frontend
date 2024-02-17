// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'placecard_item_model.dart';

/// This class defines the variables used in the [wishlist_page_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WishlistPageOneModel extends Equatable {
  WishlistPageOneModel({this.placecardItemList = const []}) {}

  List<PlacecardItemModel> placecardItemList;

  WishlistPageOneModel copyWith({List<PlacecardItemModel>? placecardItemList}) {
    return WishlistPageOneModel(
      placecardItemList: placecardItemList ?? this.placecardItemList,
    );
  }

  @override
  List<Object?> get props => [placecardItemList];
}
