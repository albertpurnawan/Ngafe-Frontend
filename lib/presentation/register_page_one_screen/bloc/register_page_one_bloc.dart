import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ngafe/presentation/register_page_one_screen/models/register_page_one_model.dart';
part 'register_page_one_event.dart';
part 'register_page_one_state.dart';

/// A bloc that manages the state of a RegisterPageOne according to the event that is dispatched to it.
class RegisterPageOneBloc
    extends Bloc<RegisterPageOneEvent, RegisterPageOneState> {
  RegisterPageOneBloc(RegisterPageOneState initialState) : super(initialState) {
    on<RegisterPageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    RegisterPageOneInitialEvent event,
    Emitter<RegisterPageOneState> emit,
  ) async {}
}
