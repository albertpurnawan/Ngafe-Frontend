import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ngafe/presentation/wishlist_page_one_container_screen/models/wishlist_page_one_container_model.dart';
part 'wishlist_page_one_container_event.dart';
part 'wishlist_page_one_container_state.dart';

/// A bloc that manages the state of a WishlistPageOneContainer according to the event that is dispatched to it.
class WishlistPageOneContainerBloc
    extends Bloc<WishlistPageOneContainerEvent, WishlistPageOneContainerState> {
  WishlistPageOneContainerBloc(WishlistPageOneContainerState initialState)
      : super(initialState) {
    on<WishlistPageOneContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WishlistPageOneContainerInitialEvent event,
    Emitter<WishlistPageOneContainerState> emit,
  ) async {}
}
