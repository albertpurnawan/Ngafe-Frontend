import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile2_item_model.dart';
import 'package:ngafe/presentation/list_page_two_screen/models/list_page_two_model.dart';
part 'list_page_two_event.dart';
part 'list_page_two_state.dart';

/// A bloc that manages the state of a ListPageTwo according to the event that is dispatched to it.
class ListPageTwoBloc extends Bloc<ListPageTwoEvent, ListPageTwoState> {
  ListPageTwoBloc(ListPageTwoState initialState) : super(initialState) {
    on<ListPageTwoInitialEvent>(_onInitialize);
  }

  List<Userprofile2ItemModel> fillUserprofile2ItemList() {
    return [
      Userprofile2ItemModel(
          namaTempat: "Nama tempat",
          alamat: "Alamat",
          starImage: ImageConstant.imgStar,
          ratingText: "4,6")
    ];
  }

  _onInitialize(
    ListPageTwoInitialEvent event,
    Emitter<ListPageTwoState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        listPageTwoModelObj: state.listPageTwoModelObj
            ?.copyWith(userprofile2ItemList: fillUserprofile2ItemList())));
  }
}
