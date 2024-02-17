// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'recentorders_item_model.dart';

/// This class defines the variables used in the [home_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePageModel extends Equatable {
  HomePageModel({this.recentordersItemList = const []}) {}

  List<RecentordersItemModel> recentordersItemList;

  HomePageModel copyWith({List<RecentordersItemModel>? recentordersItemList}) {
    return HomePageModel(
      recentordersItemList: recentordersItemList ?? this.recentordersItemList,
    );
  }

  @override
  List<Object?> get props => [recentordersItemList];
}
