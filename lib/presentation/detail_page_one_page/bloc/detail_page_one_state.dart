// ignore_for_file: must_be_immutable

part of 'detail_page_one_bloc.dart';

/// Represents the state of DetailPageOne in the application.
class DetailPageOneState extends Equatable {
  DetailPageOneState({this.detailPageOneModelObj});

  DetailPageOneModel? detailPageOneModelObj;

  @override
  List<Object?> get props => [
        detailPageOneModelObj,
      ];
  DetailPageOneState copyWith({DetailPageOneModel? detailPageOneModelObj}) {
    return DetailPageOneState(
      detailPageOneModelObj:
          detailPageOneModelObj ?? this.detailPageOneModelObj,
    );
  }
}
