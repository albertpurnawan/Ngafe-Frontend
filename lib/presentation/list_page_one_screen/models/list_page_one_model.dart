// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'placeinfo_item_model.dart';

/// This class defines the variables used in the [list_page_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ListPageOneModel extends Equatable {
  ListPageOneModel({this.placeinfoItemList = const []}) {}

  List<PlaceinfoItemModel> placeinfoItemList;

  ListPageOneModel copyWith({List<PlaceinfoItemModel>? placeinfoItemList}) {
    return ListPageOneModel(
      placeinfoItemList: placeinfoItemList ?? this.placeinfoItemList,
    );
  }

  @override
  List<Object?> get props => [placeinfoItemList];
}
