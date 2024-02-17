// ignore_for_file: must_be_immutable

part of 'list_page_one_bloc.dart';

/// Represents the state of ListPageOne in the application.
class ListPageOneState extends Equatable {
  ListPageOneState({
    this.searchController,
    this.listPageOneModelObj,
  });

  TextEditingController? searchController;

  ListPageOneModel? listPageOneModelObj;

  @override
  List<Object?> get props => [
        searchController,
        listPageOneModelObj,
      ];
  ListPageOneState copyWith({
    TextEditingController? searchController,
    ListPageOneModel? listPageOneModelObj,
  }) {
    return ListPageOneState(
      searchController: searchController ?? this.searchController,
      listPageOneModelObj: listPageOneModelObj ?? this.listPageOneModelObj,
    );
  }
}
