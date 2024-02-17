// ignore_for_file: must_be_immutable

part of 'detail_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Detail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailEvent extends Equatable {}

/// Event that is dispatched when the Detail widget is first created.
class DetailInitialEvent extends DetailEvent {
  @override
  List<Object?> get props => [];
}
