// ignore_for_file: must_be_immutable

part of 'register_page_bloc.dart';

/// Represents the state of RegisterPage in the application.
class RegisterPageState extends Equatable {
  RegisterPageState({
    this.nameEditTextController,
    this.emailEditTextController,
    this.passwordEditTextController,
    this.confirmPasswordEditTextController,
    this.registerPageModelObj,
  });

  TextEditingController? nameEditTextController;

  TextEditingController? emailEditTextController;

  TextEditingController? passwordEditTextController;

  TextEditingController? confirmPasswordEditTextController;

  RegisterPageModel? registerPageModelObj;

  @override
  List<Object?> get props => [
        nameEditTextController,
        emailEditTextController,
        passwordEditTextController,
        confirmPasswordEditTextController,
        registerPageModelObj,
      ];
  RegisterPageState copyWith({
    TextEditingController? nameEditTextController,
    TextEditingController? emailEditTextController,
    TextEditingController? passwordEditTextController,
    TextEditingController? confirmPasswordEditTextController,
    RegisterPageModel? registerPageModelObj,
  }) {
    return RegisterPageState(
      nameEditTextController:
          nameEditTextController ?? this.nameEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      confirmPasswordEditTextController: confirmPasswordEditTextController ??
          this.confirmPasswordEditTextController,
      registerPageModelObj: registerPageModelObj ?? this.registerPageModelObj,
    );
  }
}
