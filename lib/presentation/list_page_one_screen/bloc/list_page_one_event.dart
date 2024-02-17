// ignore_for_file: must_be_immutable

part of 'list_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ListPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ListPageOneEvent extends Equatable {}

/// Event that is dispatched when the ListPageOne widget is first created.
class ListPageOneInitialEvent extends ListPageOneEvent {
  @override
  List<Object?> get props => [];
}
