// ignore_for_file: must_be_immutable

part of 'wishlist_page_one_container_bloc.dart';

/// Represents the state of WishlistPageOneContainer in the application.
class WishlistPageOneContainerState extends Equatable {
  WishlistPageOneContainerState({this.wishlistPageOneContainerModelObj});

  WishlistPageOneContainerModel? wishlistPageOneContainerModelObj;

  @override
  List<Object?> get props => [
        wishlistPageOneContainerModelObj,
      ];
  WishlistPageOneContainerState copyWith(
      {WishlistPageOneContainerModel? wishlistPageOneContainerModelObj}) {
    return WishlistPageOneContainerState(
      wishlistPageOneContainerModelObj: wishlistPageOneContainerModelObj ??
          this.wishlistPageOneContainerModelObj,
    );
  }
}
