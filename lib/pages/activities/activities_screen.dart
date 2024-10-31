import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wonder_verse_app/utils/custom_appbar.dart';

import '../../constants/app_images.dart';
import '../../utils/activity_list_pattern.dart';

class ActivitiesScreen extends StatelessWidget {
  const ActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        text: 'Activities',
        actionIcon: SvgPicture.asset(
          AppImages.wishlistSearchIcon,
          height: 21.r,
          width: 21.r,
        ),
        onTap: () {
          Navigator.pushNamed(context, 'oopsScreen');
        },
      ),
      body: const ActivityListViewWithPattern(),
    );
  }
}
