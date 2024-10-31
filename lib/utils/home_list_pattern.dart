import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/constants/app_font.dart';
import 'package:wonder_verse_app/constants/app_images.dart';
import 'package:wonder_verse_app/utils/topic_list_item.dart';

class HomeListViewWithPattern extends StatelessWidget {
  const HomeListViewWithPattern({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageAsset = [
      AppImages.cockato,
      AppImages.house,
      AppImages.elephant,
      AppImages.cookCupCakeImage,
    ];
    final List<String> imageAsset2 = [
      AppImages.fruits,
      AppImages.birds,
    ];
    final List<Color> colorAssets = [
      AppColor.greenColor,
      const Color(0xffEDB736),
      const Color(0xff97C189),
      const Color(0xff71AB9C),
    ];
    final List<Color> colorAssets2 = [
      const Color(0xffDE7B5C),
      const Color(0xffDE7B5C),
    ];
    final List<String> titleAssets = [
      'The White Cockatoo',
      'A Trip to the Van Gogh Museum',
      'The Baby Elephant',
      'Let’s Make Apple Cupcakes!',
    ];
    final List<String> titleAssets2 = [
      'Create a Vegetable Poster',
      'Colouring Sheet Birds',
    ];
    final List<String> timeAssets = [
      '3:00',
      '10:00',
      '10:00',
      '10:00',
    ];
    return ListView.separated(
      separatorBuilder: (context, index) {
        if (index % 2 != 0) {
          return Padding(
            padding: EdgeInsets.only(bottom: 14.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 216.h,
                  width: 158.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        imageAsset2[0],
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
                          color: colorAssets2[0],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18.r),
                            bottomRight: Radius.circular(18.r),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            titleAssets2[0],
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
                    image: DecorationImage(
                      image: AssetImage(
                        imageAsset2[1],
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
                          color: colorAssets2[1],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18.r),
                            bottomRight: Radius.circular(18.r),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            titleAssets2[1],
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
          );
        } else {
          return const SizedBox();
        }
      },
      padding: EdgeInsets.symmetric(
        horizontal: 14.w,
        vertical: 20.h,
      ),
      itemCount: imageAsset.length,
      itemBuilder: (context, index) {
        return TopicListItem(
            imageAsset: imageAsset[index],
            colorAssets: colorAssets[index],
            titleAssets: titleAssets[index],
            timeAssets: timeAssets[index]);
      },
    );
  }
}
