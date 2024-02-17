// ignore_for_file: must_be_immutable

part of 'filter_popup_bloc.dart';

/// Represents the state of FilterPopup in the application.
class FilterPopupState extends Equatable {
  FilterPopupState({
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.filterPopupModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  FilterPopupModel? filterPopupModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        selectedDropDownValue1,
        filterPopupModelObj,
      ];
  FilterPopupState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    FilterPopupModel? filterPopupModelObj,
  }) {
    return FilterPopupState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      filterPopupModelObj: filterPopupModelObj ?? this.filterPopupModelObj,
    );
  }
}
