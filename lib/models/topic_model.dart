// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/constants/app_images.dart';

class TopicModel {
  final String image;
  final String title;
  final String time;
  String? url;
  Color bottomColor;
  TopicModel(
      {required this.image,
      required this.title,
      required this.time,
      this.bottomColor = AppColor.whiteColor,
      this.url});
}

List<TopicModel> getScienceTopics() {
  final list = <TopicModel>[];

  list.add(TopicModel(
      image: AppImages.scienceSolarImage,
      title: 'Explore the Solar System',
      time: '10:00',
      url:
          'https://digeneralapi.swatitech.com/Upload/FilesShared/Explore%20The%20Solar%20System_%20360%20Degree%20Interactive%20Tour!.mp4'));
  list.add(TopicModel(
      image: AppImages.scienceCoronaImage,
      title: 'What is the Coronavirus?',
      time: '3:00'));

  list.add(TopicModel(
      image: AppImages.scienceLeaveImage,
      title: 'How Leaves Make Energy?',
      time: '10:00'));
  list.add(TopicModel(
      image: AppImages.scienceLightsImage,
      title: 'How Lights Work?',
      time: '4:00'));

  return list;
}

List<TopicModel> getCookTopics() {
  final list = <TopicModel>[];

  list.add(TopicModel(
      image: AppImages.cookCupCakeImage,
      title: 'Decorating Donuts',
      time: '3:00'));
  list.add(TopicModel(
      image: AppImages.cookBreakfastImage,
      title: 'Banan Breakfast',
      time: '5:00'));
  list.add(TopicModel(
      image: AppImages.cookLemonadeImage,
      title: 'Let’s Make Lemonade!',
      time: '4:00'));
  list.add(TopicModel(
      image: AppImages.cookPicnicImage,
      title: 'Garden Picnic Party',
      time: '15:00'));

  return list;
}

List<TopicModel> getNatureTopics() {
  final list = <TopicModel>[];

  list.add(TopicModel(
      image: AppImages.natureDinoImage,
      title: 'Meet the largest dinosaur ever discovered',
      time: '10:00',
      url:
          'https://digeneralapi.swatitech.com/Upload/FilesShared/360%C2%B0%20meet%20the%20largest%20dinosaur%20ever%20discovered%20-%20Attenborough%20and%20the%20Giant%20Dinosaur%20-%20BBC%20One.mp4'));
  list.add(TopicModel(
      image: AppImages.natureLionImage,
      title: 'Lions 360° | National Geographic',
      time: '4:00',
      url:
          'https://digeneralapi.swatitech.com/Upload/FilesShared/Lions%20360%C2%B0%20_%20National%20Geographic.mp4'));
  list.add(TopicModel(
    image: AppImages.natureDodoImage,
    title: 'The Dodo',
    time: '3:00',
  ));
  list.add(TopicModel(
      image: AppImages.natureCanyonImage,
      title: 'The Grand Canyon',
      time: '5:00'));

  return list;
}

List<TopicModel> getWellnessTopics() {
  final list = <TopicModel>[];

  list.add(TopicModel(
      image: AppImages.wellnessBodyImage,
      title: 'What happens inside your body?',
      time: '4:00',
      url:
          'https://digeneralapi.swatitech.com/Upload/FilesShared/videoplayback.mp4'));
  list.add(TopicModel(
      image: AppImages.wellnessDigestiveImage,
      title: 'Human Digestive System in VR!!! | Education in 360',
      time: '15:00',
      url:
          'https://digeneralapi.swatitech.com/Upload/FilesShared/Human%20Digestive%20System%20in%20VR!!!%20_%20Education%20in%20360.mp4'));
  list.add(TopicModel(
      image: AppImages.wellnessStretchImage,
      title: '10min Morning Stretch',
      time: '3:00'));
  list.add(TopicModel(
      image: AppImages.wellnessFlexibleImage,
      title: 'Let’s Get Flexible',
      time: '5:00'));

  return list;
}

List<TopicModel> getCreateTopics() {
  final list = <TopicModel>[];

  list.add(TopicModel(
      image: AppImages.createArtImage,
      title: 'What is Digital Art?',
      time: '3:00'));
  list.add(TopicModel(
      image: AppImages.createMaskImage, title: 'Fun Face Masks', time: '5:00'));
  list.add(TopicModel(
      image: AppImages.createHacksImage,
      title: 'DIY Barbie hacks & Crafts',
      time: '10:00'));
  list.add(TopicModel(
      image: AppImages.creatDoughImage,
      title: 'Write Your Name in Play Dough',
      time: '4:00'));

  return list;
}

List<TopicModel> getMathsTopics() {
  final list = <TopicModel>[];

  list.add(TopicModel(
      image: AppImages.mathsSpaceImage,
      title: 'VR Space Pod Math Escape Room - Mage Math 10 Minute Video',
      time: '10:00',
      url:
          'https://digeneralapi.swatitech.com/Upload/FilesShared/VR%20Space%20Pod%20Math%20Escape%20Room%20-%20Mage%20Math%2010%20Minute%20Video.mp4'));
  list.add(TopicModel(
      image: AppImages.mathsAlgebraImage,
      title: 'What is Algebra?',
      time: '9:00'));
  list.add(TopicModel(
      image: AppImages.mathsCountingImage,
      title: 'Counting with Colours',
      time: '3:00'));
  list.add(TopicModel(
      image: AppImages.mathsActivityImage,
      title: 'Math Activities for Everyone',
      time: '5:00'));

  return list;
}
