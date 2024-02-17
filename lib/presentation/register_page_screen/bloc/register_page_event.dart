// ignore_for_file: must_be_immutable

part of 'register_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///RegisterPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class RegisterPageEvent extends Equatable {}

/// Event that is dispatched when the RegisterPage widget is first created.
class RegisterPageInitialEvent extends RegisterPageEvent {
  @override
  List<Object?> get props => [];
}
