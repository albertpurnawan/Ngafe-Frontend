// ignore_for_file: must_be_immutable

part of 'add_cafe_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AddCafePage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AddCafePageEvent extends Equatable {}

/// Event that is dispatched when the AddCafePage widget is first created.
class AddCafePageInitialEvent extends AddCafePageEvent {
  @override
  List<Object?> get props => [];
}
