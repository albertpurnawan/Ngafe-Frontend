// ignore_for_file: must_be_immutable

part of 'list_page_three_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListPageThree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListPageThreeEvent extends Equatable {}

/// Event that is dispatched when the ListPageThree widget is first created.
class ListPageThreeInitialEvent extends ListPageThreeEvent {
  @override
  List<Object?> get props => [];
}
