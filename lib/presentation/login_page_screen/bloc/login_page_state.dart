// ignore_for_file: must_be_immutable

part of 'login_page_bloc.dart';

/// Represents the state of LoginPage in the application.
class LoginPageState extends Equatable {
  LoginPageState({
    this.editTextController,
    this.editTextController1,
    this.loginPageModelObj,
  });

  TextEditingController? editTextController;

  TextEditingController? editTextController1;

  LoginPageModel? loginPageModelObj;

  @override
  List<Object?> get props => [
        editTextController,
        editTextController1,
        loginPageModelObj,
      ];
  LoginPageState copyWith({
    TextEditingController? editTextController,
    TextEditingController? editTextController1,
    LoginPageModel? loginPageModelObj,
  }) {
    return LoginPageState(
      editTextController: editTextController ?? this.editTextController,
      editTextController1: editTextController1 ?? this.editTextController1,
      loginPageModelObj: loginPageModelObj ?? this.loginPageModelObj,
    );
  }
}
