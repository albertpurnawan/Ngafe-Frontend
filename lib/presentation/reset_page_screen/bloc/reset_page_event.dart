// ignore_for_file: must_be_immutable

part of 'reset_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ResetPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ResetPageEvent extends Equatable {}

/// Event that is dispatched when the ResetPage widget is first created.
class ResetPageInitialEvent extends ResetPageEvent {
  @override
  List<Object?> get props => [];
}
