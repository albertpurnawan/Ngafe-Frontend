// ignore_for_file: must_be_immutable

part of 'wishlist_page_bloc.dart';

/// Represents the state of WishlistPage in the application.
class WishlistPageState extends Equatable {
  WishlistPageState({
    this.searchController,
    this.wishlistPageModelObj,
  });

  TextEditingController? searchController;

  WishlistPageModel? wishlistPageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        wishlistPageModelObj,
      ];
  WishlistPageState copyWith({
    TextEditingController? searchController,
    WishlistPageModel? wishlistPageModelObj,
  }) {
    return WishlistPageState(
      searchController: searchController ?? this.searchController,
      wishlistPageModelObj: wishlistPageModelObj ?? this.wishlistPageModelObj,
    );
  }
}
