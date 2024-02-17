import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ngafe/presentation/detail_page_tab_container_screen/models/detail_page_tab_container_model.dart';
part 'detail_page_tab_container_event.dart';
part 'detail_page_tab_container_state.dart';

/// A bloc that manages the state of a DetailPageTabContainer according to the event that is dispatched to it.
class DetailPageTabContainerBloc
    extends Bloc<DetailPageTabContainerEvent, DetailPageTabContainerState> {
  DetailPageTabContainerBloc(DetailPageTabContainerState initialState)
      : super(initialState) {
    on<DetailPageTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailPageTabContainerInitialEvent event,
    Emitter<DetailPageTabContainerState> emit,
  ) async {}
}
