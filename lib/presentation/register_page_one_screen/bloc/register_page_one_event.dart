// ignore_for_file: must_be_immutable

part of 'register_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegisterPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegisterPageOneEvent extends Equatable {}

/// Event that is dispatched when the RegisterPageOne widget is first created.
class RegisterPageOneInitialEvent extends RegisterPageOneEvent {
  @override
  List<Object?> get props => [];
}
