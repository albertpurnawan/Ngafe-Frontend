// ignore_for_file: must_be_immutable

part of 'wishlist_page_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WishlistPageOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WishlistPageOneEvent extends Equatable {}

/// Event that is dispatched when the WishlistPageOne widget is first created.
class WishlistPageOneInitialEvent extends WishlistPageOneEvent {
  @override
  List<Object?> get props => [];
}
