// ignore_for_file: must_be_immutable

part of 'favorit_page_bloc.dart';

/// Represents the state of FavoritPage in the application.
class FavoritPageState extends Equatable {
  FavoritPageState({
    this.searchController,
    this.favoritPageModelObj,
  });

  TextEditingController? searchController;

  FavoritPageModel? favoritPageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        favoritPageModelObj,
      ];
  FavoritPageState copyWith({
    TextEditingController? searchController,
    FavoritPageModel? favoritPageModelObj,
  }) {
    return FavoritPageState(
      searchController: searchController ?? this.searchController,
      favoritPageModelObj: favoritPageModelObj ?? this.favoritPageModelObj,
    );
  }
}
