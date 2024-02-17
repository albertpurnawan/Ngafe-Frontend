import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ngafe/presentation/profile_popup_screen/models/profile_popup_model.dart';
part 'profile_popup_event.dart';
part 'profile_popup_state.dart';

/// A bloc that manages the state of a ProfilePopup according to the event that is dispatched to it.
class ProfilePopupBloc extends Bloc<ProfilePopupEvent, ProfilePopupState> {
  ProfilePopupBloc(ProfilePopupState initialState) : super(initialState) {
    on<ProfilePopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfilePopupInitialEvent event,
    Emitter<ProfilePopupState> emit,
  ) async {}
}
