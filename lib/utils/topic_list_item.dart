import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/constants/app_font.dart';

class TopicListItem extends StatelessWidget {
  const TopicListItem({
    super.key,
    required this.imageAsset,
    this.colorAssets = AppColor.whiteColor,
    required this.titleAssets,
    required this.timeAssets,
  });

  final String imageAsset;
  final Color colorAssets;
  final String titleAssets;
  final String timeAssets;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 274.h,
      width: 339.w,
      margin: EdgeInsets.only(bottom: 14.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: 200.h,
            width: 339.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  imageAsset,
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18.r),
                topRight: Radius.circular(18.r),
              ),
            ),
          ),
          Container(
            width: 339.w,
            height: 59.h,
            decoration: BoxDecoration(
              color: colorAssets,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(18.r),
                bottomRight: Radius.circular(18.r),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 1.5,
                  child: Text(
                    titleAssets,
                    overflow: TextOverflow.clip,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'ArchitypeRenner',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                Text(
                  timeAssets,
                  style: AppTextStyle.renner12Medium500(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
