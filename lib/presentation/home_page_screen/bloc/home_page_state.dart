// ignore_for_file: must_be_immutable

part of 'home_page_bloc.dart';

/// Represents the state of HomePage in the application.
class HomePageState extends Equatable {
  HomePageState({
    this.searchController,
    this.homePageModelObj,
  });

  TextEditingController? searchController;

  HomePageModel? homePageModelObj;

  @override
  List<Object?> get props => [
        searchController,
        homePageModelObj,
      ];
  HomePageState copyWith({
    TextEditingController? searchController,
    HomePageModel? homePageModelObj,
  }) {
    return HomePageState(
      searchController: searchController ?? this.searchController,
      homePageModelObj: homePageModelObj ?? this.homePageModelObj,
    );
  }
}
