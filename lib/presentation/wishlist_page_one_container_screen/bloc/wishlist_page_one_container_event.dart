// ignore_for_file: must_be_immutable

part of 'wishlist_page_one_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WishlistPageOneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WishlistPageOneContainerEvent extends Equatable {}

/// Event that is dispatched when the WishlistPageOneContainer widget is first created.
class WishlistPageOneContainerInitialEvent
    extends WishlistPageOneContainerEvent {
  @override
  List<Object?> get props => [];
}
