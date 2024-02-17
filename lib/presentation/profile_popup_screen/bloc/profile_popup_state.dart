// ignore_for_file: must_be_immutable

part of 'profile_popup_bloc.dart';

/// Represents the state of ProfilePopup in the application.
class ProfilePopupState extends Equatable {
  ProfilePopupState({this.profilePopupModelObj});

  ProfilePopupModel? profilePopupModelObj;

  @override
  List<Object?> get props => [
        profilePopupModelObj,
      ];
  ProfilePopupState copyWith({ProfilePopupModel? profilePopupModelObj}) {
    return ProfilePopupState(
      profilePopupModelObj: profilePopupModelObj ?? this.profilePopupModelObj,
    );
  }
}
