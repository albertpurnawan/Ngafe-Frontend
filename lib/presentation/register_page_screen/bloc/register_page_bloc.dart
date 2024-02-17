import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ngafe/presentation/register_page_screen/models/register_page_model.dart';
part 'register_page_event.dart';
part 'register_page_state.dart';

/// A bloc that manages the state of a RegisterPage according to the event that is dispatched to it.
class RegisterPageBloc extends Bloc<RegisterPageEvent, RegisterPageState> {
  RegisterPageBloc(RegisterPageState initialState) : super(initialState) {
    on<RegisterPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegisterPageInitialEvent event,
    Emitter<RegisterPageState> emit,
  ) async {
    emit(state.copyWith(
        nameEditTextController: TextEditingController(),
        emailEditTextController: TextEditingController(),
        passwordEditTextController: TextEditingController(),
        confirmPasswordEditTextController: TextEditingController()));
  }
}
