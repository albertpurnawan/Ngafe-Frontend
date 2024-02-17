import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ngafe/presentation/reset_page_screen/models/reset_page_model.dart';
part 'reset_page_event.dart';
part 'reset_page_state.dart';

/// A bloc that manages the state of a ResetPage according to the event that is dispatched to it.
class ResetPageBloc extends Bloc<ResetPageEvent, ResetPageState> {
  ResetPageBloc(ResetPageState initialState) : super(initialState) {
    on<ResetPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPageInitialEvent event,
    Emitter<ResetPageState> emit,
  ) async {
    emit(state.copyWith(passwordController: TextEditingController()));
  }
}
