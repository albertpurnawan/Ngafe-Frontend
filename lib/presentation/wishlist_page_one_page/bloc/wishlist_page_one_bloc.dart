import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/placecard_item_model.dart';
import 'package:ngafe/presentation/wishlist_page_one_page/models/wishlist_page_one_model.dart';
part 'wishlist_page_one_event.dart';
part 'wishlist_page_one_state.dart';

/// A bloc that manages the state of a WishlistPageOne according to the event that is dispatched to it.
class WishlistPageOneBloc
    extends Bloc<WishlistPageOneEvent, WishlistPageOneState> {
  WishlistPageOneBloc(WishlistPageOneState initialState) : super(initialState) {
    on<WishlistPageOneInitialEvent>(_onInitialize);
  }

  List<PlacecardItemModel> fillPlacecardItemList() {
    return [
      PlacecardItemModel(
          placeName: "Nama tempat",
          placeAddress: "Alamat",
          ratingText: "4,6",
          placeName1: "Nama tempat",
          placeAddress1: "Alamat",
          ratingText1: "4,6")
    ];
  }

  _onInitialize(
    WishlistPageOneInitialEvent event,
    Emitter<WishlistPageOneState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        wishlistPageOneModelObj: state.wishlistPageOneModelObj
            ?.copyWith(placecardItemList: fillPlacecardItemList())));
  }
}
