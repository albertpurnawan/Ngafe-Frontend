import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:ngafe/presentation/list_page_three_screen/models/list_page_three_model.dart';
part 'list_page_three_event.dart';
part 'list_page_three_state.dart';

/// A bloc that manages the state of a ListPageThree according to the event that is dispatched to it.
class ListPageThreeBloc extends Bloc<ListPageThreeEvent, ListPageThreeState> {
  ListPageThreeBloc(ListPageThreeState initialState) : super(initialState) {
    on<ListPageThreeInitialEvent>(_onInitialize);
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          namaTempat: "Nama tempat",
          alamat: "Alamat",
          star: "star",
          fortySix: "4,6")
    ];
  }

  _onInitialize(
    ListPageThreeInitialEvent event,
    Emitter<ListPageThreeState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        listPageThreeModelObj: state.listPageThreeModelObj
            ?.copyWith(userprofileItemList: fillUserprofileItemList())));
  }
}
