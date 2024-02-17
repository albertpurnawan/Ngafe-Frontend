import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ngafe/presentation/detail_page/models/detail_model.dart';
part 'detail_event.dart';
part 'detail_state.dart';

/// A bloc that manages the state of a Detail according to the event that is dispatched to it.
class DetailBloc extends Bloc<DetailEvent, DetailState> {
  DetailBloc(DetailState initialState) : super(initialState) {
    on<DetailInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailInitialEvent event,
    Emitter<DetailState> emit,
  ) async {}
}
