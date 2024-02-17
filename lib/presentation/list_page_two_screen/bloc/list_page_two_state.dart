// ignore_for_file: must_be_immutable

part of 'list_page_two_bloc.dart';

/// Represents the state of ListPageTwo in the application.
class ListPageTwoState extends Equatable {
  ListPageTwoState({
    this.searchController,
    this.listPageTwoModelObj,
  });

  TextEditingController? searchController;

  ListPageTwoModel? listPageTwoModelObj;

  @override
  List<Object?> get props => [
        searchController,
        listPageTwoModelObj,
      ];
  ListPageTwoState copyWith({
    TextEditingController? searchController,
    ListPageTwoModel? listPageTwoModelObj,
  }) {
    return ListPageTwoState(
      searchController: searchController ?? this.searchController,
      listPageTwoModelObj: listPageTwoModelObj ?? this.listPageTwoModelObj,
    );
  }
}
