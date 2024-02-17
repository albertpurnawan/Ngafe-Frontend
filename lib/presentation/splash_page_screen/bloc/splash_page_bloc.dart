import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ngafe/presentation/splash_page_screen/models/splash_page_model.dart';
part 'splash_page_event.dart';
part 'splash_page_state.dart';

/// A bloc that manages the state of a SplashPage according to the event that is dispatched to it.
class SplashPageBloc extends Bloc<SplashPageEvent, SplashPageState> {
  SplashPageBloc(SplashPageState initialState) : super(initialState) {
    on<SplashPageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashPageInitialEvent event,
    Emitter<SplashPageState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.loginPageScreen,
      );
    });
  }
}
