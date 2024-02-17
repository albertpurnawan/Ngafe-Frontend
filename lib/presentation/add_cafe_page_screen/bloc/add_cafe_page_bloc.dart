import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ngafe/presentation/add_cafe_page_screen/models/add_cafe_page_model.dart';
part 'add_cafe_page_event.dart';
part 'add_cafe_page_state.dart';

/// A bloc that manages the state of a AddCafePage according to the event that is dispatched to it.
class AddCafePageBloc extends Bloc<AddCafePageEvent, AddCafePageState> {
  AddCafePageBloc(AddCafePageState initialState) : super(initialState) {
    on<AddCafePageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    AddCafePageInitialEvent event,
    Emitter<AddCafePageState> emit,
  ) async {
    emit(state.copyWith(
      settingsController: TextEditingController(),
    ));
  }
}
