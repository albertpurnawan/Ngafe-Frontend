// ignore_for_file: must_be_immutable

part of 'detail_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailPageOneEvent extends Equatable {}

/// Event that is dispatched when the DetailPageOne widget is first created.
class DetailPageOneInitialEvent extends DetailPageOneEvent {
  @override
  List<Object?> get props => [];
}
