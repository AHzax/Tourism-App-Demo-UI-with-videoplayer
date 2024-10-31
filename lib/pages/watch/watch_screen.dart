import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/models/topic_model.dart';
import 'package:wonder_verse_app/models/watch_item_model.dart';
import 'package:wonder_verse_app/utils/custom_appbar.dart';

import '../../constants/app_font.dart';
import '../../constants/app_images.dart';
import '../../constants/app_strings.dart';

class WatchScreen extends StatelessWidget {
  const WatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final watchList = getWatchList();
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: CustomAppBar(
          text: AppStrings.watch,
          actionIcon: SvgPicture.asset(
            AppImages.wishlistSearchIcon,
            height: 21.r,
            width: 21.r,
          ),
          onTap: () {
            Navigator.pushNamed(context, 'oopsScreen');
          },

          /*  centerTitle: true,
          title: Text(
            AppStrings.watch,
            style: AppTextStyle.renner28Medium500(),
          ), */
        ),
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 20,
          ),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              mainAxisExtent: 1.sh / 3.5),
          itemCount: watchList.length,
          itemBuilder: (_, index) {
            return InkWell(
              onTap: () {
                switch (index) {
                  case 0:
                    final data = {
                      'mainTopic': watchList[index],
                      'topics': getScienceTopics(),
                    };
                    Navigator.pushNamed(context, 'watchList', arguments: data);
                    break;
                  case 1:
                    final data = {
                      'mainTopic': watchList[index],
                      'topics': getCookTopics(),
                    };
                    Navigator.pushNamed(context, 'watchList', arguments: data);
                    break;
                  case 2:
                    final data = {
                      'mainTopic': watchList[index],
                      'topics': getNatureTopics(),
                    };
                    Navigator.pushNamed(context, 'watchList', arguments: data);
                    break;
                  case 3:
                    final data = {
                      'mainTopic': watchList[index],
                      'topics': getWellnessTopics()
                    };
                    Navigator.pushNamed(context, 'watchList', arguments: data);
                    break;
                  case 4:
                    final data = {
                      'mainTopic': watchList[index],
                      'topics': getCreateTopics()
                    };
                    Navigator.pushNamed(context, 'watchList', arguments: data);
                    break;
                  case 5:
                    final data = {
                      'mainTopic': watchList[index],
                      'topics': getMathsTopics()
                    };
                    Navigator.pushNamed(context, 'watchList', arguments: data);
                    break;
                  case 6:
                    break;
                  case 7:
                    break;
                  default:
                    throw 'Invalid Value';
                }
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: watchList[index].color,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  watchList[index].title,
                  style: TextStyle(
                    fontFamily: AppFont.renner,
                    fontSize: 26.sp,
                    fontWeight: FontWeight.w500,
                    color: index == 5 || index == 6
                        ? AppColor.white
                        : AppColor.blackColor,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
