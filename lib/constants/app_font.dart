// import 'package:flutter/material.dart';
//
// import 'constants_color.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wonder_verse_app/constants/app_color.dart';

abstract class AppFont {
  static const renner = 'ArchitypeRenner';
}

abstract class AppTextStyle {
  static double getTextScaleFactor(context) {
    // ignore: deprecated_member_use
    return MediaQuery.textScaleFactorOf(context);
  }

  static TextStyle renner28Medium500() => TextStyle(
        fontFamily: AppFont.renner,
        fontSize: 28.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.blackColor,
      );
  static TextStyle renner56Medium500() => TextStyle(
        fontFamily: AppFont.renner,
        fontSize: 56.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.blackColor,
      );

  static TextStyle renner18Medium500() => TextStyle(
        fontFamily: AppFont.renner,
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.blackColor,
      );
  static TextStyle renner16Medium500() => TextStyle(
        fontFamily: AppFont.renner,
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.blackColor,
      );
  static TextStyle renner14Bold() => TextStyle(
        fontFamily: AppFont.renner,
        fontSize: 14.sp,
        fontWeight: FontWeight.bold,
        color: AppColor.blackColor,
      );
  static TextStyle renner12Medium500() => TextStyle(
        fontFamily: AppFont.renner,
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.blackColor,
      );
  static TextStyle renner13Medium500() => TextStyle(
        fontFamily: AppFont.renner,
        fontSize: 13.sp,
        fontWeight: FontWeight.w500,
        color: AppColor.blackColor,
      );
}
