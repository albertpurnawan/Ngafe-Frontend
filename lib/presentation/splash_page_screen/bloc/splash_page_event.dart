// ignore_for_file: must_be_immutable

part of 'splash_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SplashPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SplashPageEvent extends Equatable {}

/// Event that is dispatched when the SplashPage widget is first created.
class SplashPageInitialEvent extends SplashPageEvent {
  @override
  List<Object?> get props => [];
}
