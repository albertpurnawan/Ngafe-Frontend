import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ngafe/presentation/filter_popup_draweritem/models/filter_popup_model.dart';
part 'filter_popup_event.dart';
part 'filter_popup_state.dart';

/// A bloc that manages the state of a FilterPopup according to the event that is dispatched to it.
class FilterPopupBloc extends Bloc<FilterPopupEvent, FilterPopupState> {
  FilterPopupBloc(FilterPopupState initialState) : super(initialState) {
    on<FilterPopupInitialEvent>(_onInitialize);
    on<ChangeDropDownEvent>(_changeDropDown);
    on<ChangeDropDown1Event>(_changeDropDown1);
  }

  _onInitialize(
    FilterPopupInitialEvent event,
    Emitter<FilterPopupState> emit,
  ) async {
    emit(state.copyWith(
        filterPopupModelObj: state.filterPopupModelObj?.copyWith(
            dropdownItemList: fillDropdownItemList(),
            dropdownItemList1: fillDropdownItemList1())));
  }

  _changeDropDown(
    ChangeDropDownEvent event,
    Emitter<FilterPopupState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue: event.value));
  }

  _changeDropDown1(
    ChangeDropDown1Event event,
    Emitter<FilterPopupState> emit,
  ) {
    emit(state.copyWith(selectedDropDownValue1: event.value));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(id: 1, title: "Item One", isSelected: true),
      SelectionPopupModel(id: 2, title: "Item Two"),
      SelectionPopupModel(id: 3, title: "Item Three")
    ];
  }
}
