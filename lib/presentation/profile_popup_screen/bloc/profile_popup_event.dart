// ignore_for_file: must_be_immutable

part of 'profile_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfilePopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfilePopupEvent extends Equatable {}

/// Event that is dispatched when the ProfilePopup widget is first created.
class ProfilePopupInitialEvent extends ProfilePopupEvent {
  @override
  List<Object?> get props => [];
}
