import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/thirtyfour_item_model.dart';
import 'package:ngafe/presentation/wishlist_page_screen/models/wishlist_page_model.dart';
part 'wishlist_page_event.dart';
part 'wishlist_page_state.dart';

/// A bloc that manages the state of a WishlistPage according to the event that is dispatched to it.
class WishlistPageBloc extends Bloc<WishlistPageEvent, WishlistPageState> {
  WishlistPageBloc(WishlistPageState initialState) : super(initialState) {
    on<WishlistPageInitialEvent>(_onInitialize);
  }

  List<ThirtyfourItemModel> fillThirtyfourItemList() {
    return [
      ThirtyfourItemModel(
          wishlistName: "Nama wishlist",
          ellipsisIcon: "ellipsis-v",
          tempatText: "10 Tempat"),
      ThirtyfourItemModel(
          wishlistName: "Nama wishlist",
          ellipsisIcon: "ellipsis-v",
          tempatText: "10 Tempat")
    ];
  }

  _onInitialize(
    WishlistPageInitialEvent event,
    Emitter<WishlistPageState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        wishlistPageModelObj: state.wishlistPageModelObj
            ?.copyWith(thirtyfourItemList: fillThirtyfourItemList())));
  }
}
