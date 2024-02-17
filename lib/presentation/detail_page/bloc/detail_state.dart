// ignore_for_file: must_be_immutable

part of 'detail_bloc.dart';

/// Represents the state of Detail in the application.
class DetailState extends Equatable {
  DetailState({this.detailModelObj});

  DetailModel? detailModelObj;

  @override
  List<Object?> get props => [
        detailModelObj,
      ];
  DetailState copyWith({DetailModel? detailModelObj}) {
    return DetailState(
      detailModelObj: detailModelObj ?? this.detailModelObj,
    );
  }
}
