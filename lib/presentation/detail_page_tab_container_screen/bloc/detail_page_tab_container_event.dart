// ignore_for_file: must_be_immutable

part of 'detail_page_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DetailPageTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DetailPageTabContainerEvent extends Equatable {}

/// Event that is dispatched when the DetailPageTabContainer widget is first created.
class DetailPageTabContainerInitialEvent extends DetailPageTabContainerEvent {
  @override
  List<Object?> get props => [];
}
