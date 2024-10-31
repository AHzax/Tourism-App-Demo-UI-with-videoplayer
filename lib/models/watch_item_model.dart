// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:wonder_verse_app/constants/app_color.dart';

class WatchItemModel {
  final String title;
  final Color color;
  WatchItemModel({
    required this.title,
    required this.color,
  });
}

List<WatchItemModel> getWatchList() {
  final list = <WatchItemModel>[];
  list.add(WatchItemModel(title: 'Science', color: AppColor.watchPurple));
  list.add(WatchItemModel(title: 'Cook', color: AppColor.watchOrange));
  list.add(WatchItemModel(title: 'Nature', color: AppColor.watchGreen));
  list.add(WatchItemModel(title: 'Wellness', color: AppColor.watchPink));
  list.add(WatchItemModel(title: 'Create', color: AppColor.watchPeach));
  list.add(WatchItemModel(title: 'Maths', color: AppColor.watchBlue));
  list.add(WatchItemModel(title: 'Dance', color: AppColor.watchMaroon));
  list.add(WatchItemModel(title: 'Explore', color: AppColor.watchSlateGreen));

  return list;
}
