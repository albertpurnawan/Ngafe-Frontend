// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [detail_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailModel extends Equatable {
  DetailModel() {}

  DetailModel copyWith() {
    return DetailModel();
  }

  @override
  List<Object?> get props => [];
}
