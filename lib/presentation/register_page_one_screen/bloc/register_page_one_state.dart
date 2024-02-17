// ignore_for_file: must_be_immutable

part of 'register_page_one_bloc.dart';

/// Represents the state of RegisterPageOne in the application.
class RegisterPageOneState extends Equatable {
  RegisterPageOneState({this.registerPageOneModelObj});

  RegisterPageOneModel? registerPageOneModelObj;

  @override
  List<Object?> get props => [
        registerPageOneModelObj,
      ];
  RegisterPageOneState copyWith(
      {RegisterPageOneModel? registerPageOneModelObj}) {
    return RegisterPageOneState(
      registerPageOneModelObj:
          registerPageOneModelObj ?? this.registerPageOneModelObj,
    );
  }
}
