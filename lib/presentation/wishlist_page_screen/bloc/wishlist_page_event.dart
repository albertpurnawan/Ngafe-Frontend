// ignore_for_file: must_be_immutable

part of 'wishlist_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WishlistPage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WishlistPageEvent extends Equatable {}

/// Event that is dispatched when the WishlistPage widget is first created.
class WishlistPageInitialEvent extends WishlistPageEvent {
  @override
  List<Object?> get props => [];
}
