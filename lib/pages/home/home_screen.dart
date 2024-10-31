import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/constants/app_font.dart';
import 'package:wonder_verse_app/constants/app_images.dart';
import 'package:wonder_verse_app/constants/app_strings.dart';

import '../../utils/topic_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              AppStrings.appName,
              style: AppTextStyle.renner28Medium500(),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(
                  right: 20.w,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'editprofile');
                  },
                  child: SvgPicture.asset(
                    AppImages.cIcon,
                    width: 32.w,
                    height: 32.h,
                  ),
                ),
              ),
            ]),
        body: ListView(
          padding: const EdgeInsets.all(14),
          shrinkWrap: true,
          children: [
            const TopicListItem(
                imageAsset: AppImages.cockato,
                colorAssets: AppColor.greenColor,
                titleAssets: 'The White Cockatoo',
                timeAssets: '3:00'),
            const TopicListItem(
                imageAsset: AppImages.house,
                colorAssets: AppColor.navItemOneColor,
                titleAssets: 'A Trip to the Van Gogh Museum',
                timeAssets: '10:00'),
            const Divider(
              height: 5,
            ),
            Gap(14.h),
            const Text(
              'Daily Activities',
              style: TextStyle(
                  fontSize: 16,
                  color: AppColor.blackColor,
                  fontWeight: FontWeight.w600),
            ),
            Gap(14.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 216.h,
                  width: 158.w,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                        AppImages.fruits,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 46.51.h,
                        decoration: BoxDecoration(
                          color: AppColor.redColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18.r),
                            bottomRight: Radius.circular(18.r),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Create a Vegetable Poster',
                            style: AppTextStyle.renner12Medium500().copyWith(
                                fontSize: 11.sp, color: AppColor.whiteColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 216.h,
                  width: 158.w,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                        AppImages.birds,
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(18.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 46.51.h,
                        decoration: BoxDecoration(
                          color: AppColor.redColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18.r),
                            bottomRight: Radius.circular(18.r),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Colouring Sheet Birds',
                            style: AppTextStyle.renner12Medium500().copyWith(
                                fontSize: 11.sp, color: AppColor.whiteColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Gap(14.h),
            const Divider(),
            Gap(10.h),
            const Text(
              'Recommended For You',
              style: TextStyle(
                  fontSize: 16,
                  color: AppColor.blackColor,
                  fontWeight: FontWeight.w600),
            ),
            Gap(14.h),
            const TopicListItem(
                imageAsset: AppImages.elephant,
                colorAssets: AppColor.profileGreenColor,
                titleAssets: 'The Baby Elephant',
                timeAssets: '10:00'),
            const TopicListItem(
                imageAsset: AppImages.cookCupCakeImage,
                colorAssets: AppColor.watchSlateGreen,
                titleAssets: 'Let’s Make Apple Cupcakes!',
                timeAssets: '10:00'),
          ],
        )
        /*  const HomeListViewWithPattern() */
        );
  }
}
