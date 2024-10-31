// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:wonder_verse_app/constants/app_images.dart';

class ActivityModel {
  final String title;
  final String image;
  ActivityModel({
    required this.title,
    required this.image,
  });
}

List<ActivityModel> fetchActivitiesData() {
  return <ActivityModel>[
    ActivityModel(image: AppImages.fruits, title: 'Create a Vegetable Poster'),
    ActivityModel(image: AppImages.parrot, title: 'ABC'),
    ActivityModel(image: AppImages.fruits, title: 'Create a Vegetable Poster'),
    ActivityModel(image: AppImages.fruits, title: 'Create a Vegetable Poster'),
    ActivityModel(image: AppImages.fruits, title: 'Create a Vegetable Poster'),
    ActivityModel(image: AppImages.fruits, title: 'Create a Vegetable Poster'),
    ActivityModel(image: AppImages.fruits, title: 'Create a Vegetable Poster'),
    ActivityModel(image: AppImages.fruits, title: 'Create a Vegetable Poster'),
    ActivityModel(image: AppImages.fruits, title: 'Create a Vegetable Poster'),
    ActivityModel(image: AppImages.fruits, title: 'Create a Vegetable Poster'),
  ];
}
