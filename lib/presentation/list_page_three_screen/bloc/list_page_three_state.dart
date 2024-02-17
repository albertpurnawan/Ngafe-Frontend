// ignore_for_file: must_be_immutable

part of 'list_page_three_bloc.dart';

/// Represents the state of ListPageThree in the application.
class ListPageThreeState extends Equatable {
  ListPageThreeState({
    this.searchController,
    this.listPageThreeModelObj,
  });

  TextEditingController? searchController;

  ListPageThreeModel? listPageThreeModelObj;

  @override
  List<Object?> get props => [
        searchController,
        listPageThreeModelObj,
      ];
  ListPageThreeState copyWith({
    TextEditingController? searchController,
    ListPageThreeModel? listPageThreeModelObj,
  }) {
    return ListPageThreeState(
      searchController: searchController ?? this.searchController,
      listPageThreeModelObj:
          listPageThreeModelObj ?? this.listPageThreeModelObj,
    );
  }
}
