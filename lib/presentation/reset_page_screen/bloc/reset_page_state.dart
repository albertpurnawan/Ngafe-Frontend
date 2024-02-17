// ignore_for_file: must_be_immutable

part of 'reset_page_bloc.dart';

/// Represents the state of ResetPage in the application.
class ResetPageState extends Equatable {
  ResetPageState({
    this.passwordController,
    this.resetPageModelObj,
  });

  TextEditingController? passwordController;

  ResetPageModel? resetPageModelObj;

  @override
  List<Object?> get props => [
        passwordController,
        resetPageModelObj,
      ];
  ResetPageState copyWith({
    TextEditingController? passwordController,
    ResetPageModel? resetPageModelObj,
  }) {
    return ResetPageState(
      passwordController: passwordController ?? this.passwordController,
      resetPageModelObj: resetPageModelObj ?? this.resetPageModelObj,
    );
  }
}
