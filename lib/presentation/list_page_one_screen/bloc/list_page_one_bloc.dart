import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/placeinfo_item_model.dart';
import 'package:ngafe/presentation/list_page_one_screen/models/list_page_one_model.dart';
part 'list_page_one_event.dart';
part 'list_page_one_state.dart';

/// A bloc that manages the state of a ListPageOne according to the event that is dispatched to it.
class ListPageOneBloc extends Bloc<ListPageOneEvent, ListPageOneState> {
  ListPageOneBloc(ListPageOneState initialState) : super(initialState) {
    on<ListPageOneInitialEvent>(_onInitialize);
  }

  List<PlaceinfoItemModel> fillPlaceinfoItemList() {
    return [
      PlaceinfoItemModel(
          placeName: "Nama tempat", placeAddress: "Alamat", rating: "4,6"),
      PlaceinfoItemModel(
          placeName: "Nama tempat", placeAddress: "Alamat", rating: "4,6"),
      PlaceinfoItemModel(
          placeName: "Nama tempat", placeAddress: "Alamat", rating: "4,6"),
      PlaceinfoItemModel(
          placeName: "Nama tempat", placeAddress: "Alamat", rating: "4,6"),
      PlaceinfoItemModel(
          placeName: "Nama tempat", placeAddress: "Alamat", rating: "4,6"),
      PlaceinfoItemModel(
          placeName: "Nama tempat", placeAddress: "Alamat", rating: "4,6")
    ];
  }

  _onInitialize(
    ListPageOneInitialEvent event,
    Emitter<ListPageOneState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        listPageOneModelObj: state.listPageOneModelObj
            ?.copyWith(placeinfoItemList: fillPlaceinfoItemList())));
  }
}
