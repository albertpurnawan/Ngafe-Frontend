// ignore_for_file: must_be_immutable

part of 'add_cafe_page_bloc.dart';

/// Represents the state of AddCafePage in the application.
class AddCafePageState extends Equatable {
  AddCafePageState({
    this.settingsController,
    this.addCafePageModelObj,
  });

  TextEditingController? settingsController;

  AddCafePageModel? addCafePageModelObj;

  @override
  List<Object?> get props => [
        settingsController,
        addCafePageModelObj,
      ];
  AddCafePageState copyWith({
    TextEditingController? settingsController,
    AddCafePageModel? addCafePageModelObj,
  }) {
    return AddCafePageState(
      settingsController: settingsController ?? this.settingsController,
      addCafePageModelObj: addCafePageModelObj ?? this.addCafePageModelObj,
    );
  }
}
