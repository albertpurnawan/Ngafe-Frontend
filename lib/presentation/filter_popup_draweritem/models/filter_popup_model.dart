// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:ngafe/data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [filter_popup_draweritem],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterPopupModel extends Equatable {
  FilterPopupModel({
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  FilterPopupModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
  }) {
    return FilterPopupModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
    );
  }

  @override
  List<Object?> get props => [dropdownItemList, dropdownItemList1];
}
