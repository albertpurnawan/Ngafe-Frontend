// ignore_for_file: must_be_immutable

part of 'favorit_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FavoritPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FavoritPageEvent extends Equatable {}

/// Event that is dispatched when the FavoritPage widget is first created.
class FavoritPageInitialEvent extends FavoritPageEvent {
  @override
  List<Object?> get props => [];
}
