// ignore_for_file: must_be_immutable

part of 'filter_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FilterPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FilterPopupEvent extends Equatable {}

/// Event that is dispatched when the FilterPopup widget is first created.
class FilterPopupInitialEvent extends FilterPopupEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends FilterPopupEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends FilterPopupEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
