// ignore_for_file: must_be_immutable

part of 'splash_page_bloc.dart';

/// Represents the state of SplashPage in the application.
class SplashPageState extends Equatable {
  SplashPageState({this.splashPageModelObj});

  SplashPageModel? splashPageModelObj;

  @override
  List<Object?> get props => [
        splashPageModelObj,
      ];
  SplashPageState copyWith({SplashPageModel? splashPageModelObj}) {
    return SplashPageState(
      splashPageModelObj: splashPageModelObj ?? this.splashPageModelObj,
    );
  }
}
