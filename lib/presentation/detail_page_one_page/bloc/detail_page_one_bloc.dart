import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ngafe/presentation/detail_page_one_page/models/detail_page_one_model.dart';
part 'detail_page_one_event.dart';
part 'detail_page_one_state.dart';

/// A bloc that manages the state of a DetailPageOne according to the event that is dispatched to it.
class DetailPageOneBloc extends Bloc<DetailPageOneEvent, DetailPageOneState> {
  DetailPageOneBloc(DetailPageOneState initialState) : super(initialState) {
    on<DetailPageOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageOneInitialEvent event,
    Emitter<DetailPageOneState> emit,
  ) async {}
}
