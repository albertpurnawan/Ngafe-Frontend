// ignore_for_file: must_be_immutable

part of 'detail_page_tab_container_bloc.dart';

/// Represents the state of DetailPageTabContainer in the application.
class DetailPageTabContainerState extends Equatable {
  DetailPageTabContainerState({this.detailPageTabContainerModelObj});

  DetailPageTabContainerModel? detailPageTabContainerModelObj;

  @override
  List<Object?> get props => [
        detailPageTabContainerModelObj,
      ];
  DetailPageTabContainerState copyWith(
      {DetailPageTabContainerModel? detailPageTabContainerModelObj}) {
    return DetailPageTabContainerState(
      detailPageTabContainerModelObj:
          detailPageTabContainerModelObj ?? this.detailPageTabContainerModelObj,
    );
  }
}
