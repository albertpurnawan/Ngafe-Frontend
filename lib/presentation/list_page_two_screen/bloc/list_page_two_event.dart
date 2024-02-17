// ignore_for_file: must_be_immutable

part of 'list_page_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListPageTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListPageTwoEvent extends Equatable {}

/// Event that is dispatched when the ListPageTwo widget is first created.
class ListPageTwoInitialEvent extends ListPageTwoEvent {
  @override
  List<Object?> get props => [];
}
