import '../constants/app_images.dart';

class ProfileModel {
  String image;
  String name;
  ProfileModel({
    required this.image,
    required this.name,
  });
}

List<ProfileModel> getProfilesList() {
  final list = <ProfileModel>[
    ProfileModel(image: AppImages.a, name: 'Aya'),
    ProfileModel(image: AppImages.c, name: 'Charlotte'),
    ProfileModel(image: AppImages.j, name: 'Justin'),
    ProfileModel(image: AppImages.m, name: 'Mahi'),
    ProfileModel(image: AppImages.z, name: 'Zara'),
    ProfileModel(image: AppImages.add, name: 'Add Profile'),
  ];

  return list;
}
