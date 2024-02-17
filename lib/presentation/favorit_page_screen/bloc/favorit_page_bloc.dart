import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile1_item_model.dart';
import 'package:ngafe/presentation/favorit_page_screen/models/favorit_page_model.dart';
part 'favorit_page_event.dart';
part 'favorit_page_state.dart';

/// A bloc that manages the state of a FavoritPage according to the event that is dispatched to it.
class FavoritPageBloc extends Bloc<FavoritPageEvent, FavoritPageState> {
  FavoritPageBloc(FavoritPageState initialState) : super(initialState) {
    on<FavoritPageInitialEvent>(_onInitialize);
  }

  List<Userprofile1ItemModel> fillUserprofile1ItemList() {
    return [
      Userprofile1ItemModel(
          namaTempat: "Nama tempat",
          alamat: "Alamat",
          star: "star",
          fortySix: "4,6")
    ];
  }

  _onInitialize(
    FavoritPageInitialEvent event,
    Emitter<FavoritPageState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        favoritPageModelObj: state.favoritPageModelObj
            ?.copyWith(userprofile1ItemList: fillUserprofile1ItemList())));
  }
}
