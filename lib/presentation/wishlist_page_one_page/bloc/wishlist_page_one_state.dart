// ignore_for_file: must_be_immutable

part of 'wishlist_page_one_bloc.dart';

/// Represents the state of WishlistPageOne in the application.
class WishlistPageOneState extends Equatable {
  WishlistPageOneState({
    this.searchController,
    this.wishlistPageOneModelObj,
  });

  TextEditingController? searchController;

  WishlistPageOneModel? wishlistPageOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        wishlistPageOneModelObj,
      ];
  WishlistPageOneState copyWith({
    TextEditingController? searchController,
    WishlistPageOneModel? wishlistPageOneModelObj,
  }) {
    return WishlistPageOneState(
      searchController: searchController ?? this.searchController,
      wishlistPageOneModelObj:
          wishlistPageOneModelObj ?? this.wishlistPageOneModelObj,
    );
  }
}
