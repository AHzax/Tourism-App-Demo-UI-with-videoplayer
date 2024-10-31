import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/constants/app_images.dart';
import 'package:wonder_verse_app/constants/app_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> svgPaths = [
      AppImages.a,
      AppImages.selectedC,
      AppImages.j,
      AppImages.m,
      // AppImages.c,
    ];
    final List<String> data = ["Aya", "Charlotte", "Justin", "Mahi"];

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        title: Padding(
          padding: EdgeInsets.only(top: 28.r),
          child: Center(
            child: Text(
              AppStrings.profile,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 28.r,
                color: AppColor.blackFontColor,
                fontFamily: "ArchitypeRenner",
              ),
            ),
          ),
        ),
      ),
      body: SizedBox(
        height: 1.sh / 1.3,
        width: 1.sw,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Gap(35),
            SizedBox(
              height: 103.r,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 17.r),
                scrollDirection: Axis.horizontal,
                itemCount: svgPaths.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 15.r),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          svgPaths[index],
                          fit: BoxFit.cover,
                          width: 80.w,
                          height: 80.h,
                        ),
                        /* Container(
                          width: 80.r,
                          height: 80.r,
                          decoration: BoxDecoration(
                            border: index == 1
                                ? Border.all(
                                    color: Colors.black,
                                    width: 2,
                                  )
                                : Border.all(
                                    width: 0, color: Colors.transparent),
                            color: pngColors[index],
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(22.r),
                            child: Image.asset(
                              pngPaths[index],
                              fit: BoxFit.contain,
                            ),
                          ),
                        ), */
                        Text(
                          data[index],
                          style: index == 1
                              ? const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontFamily: 'ArchitypeRenner',
                                  fontWeight: FontWeight.w500,
                                )
                              : const TextStyle(
                                  color: Color(0xFF999999),
                                  fontSize: 14,
                                  fontFamily: 'ArchitypeRenner',
                                  fontWeight: FontWeight.w500,
                                ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const Gap(35),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.r),
              child: TextFormField(
                readOnly: true,
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'watchListPage');
                },
                decoration: InputDecoration(
                    hintText: "Watchlist",
                    hintStyle: const TextStyle(
                      color: AppColor.blackColor,
                      fontSize: 14,
                      fontFamily: 'ArchitypeRenner',
                      fontWeight: FontWeight.w600,
                    ),
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16.r,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.hintColor),
                    )),
              ),
            ),
            const Gap(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.r),
              child: TextFormField(
                onTap: () {
                  Navigator.pushReplacementNamed(context, "history");
                },
                readOnly: true,
                decoration: InputDecoration(
                    hintText: "Watch history",
                    hintStyle: const TextStyle(
                      color: AppColor.blackColor,
                      fontSize: 14,
                      fontFamily: 'ArchitypeRenner',
                      fontWeight: FontWeight.w600,
                    ),
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16.r,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.hintColor),
                    )),
              ),
            ),
            const Gap(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.r),
              child: TextFormField(
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'contentControlPage');
                },
                readOnly: true,
                decoration: InputDecoration(
                    hintText: "Content control",
                    hintStyle: const TextStyle(
                      color: AppColor.blackColor,
                      fontSize: 14,
                      fontFamily: 'ArchitypeRenner',
                      fontWeight: FontWeight.w600,
                    ),
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16.r,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.hintColor),
                    )),
              ),
            ),
            const Gap(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.r),
              child: TextFormField(
                onTap: () {
                  Navigator.pushReplacementNamed(context, 'progressPage');
                },
                readOnly: true,
                decoration: InputDecoration(
                    hintText: "Progress",
                    hintStyle: const TextStyle(
                      color: AppColor.blackColor,
                      fontSize: 14,
                      fontFamily: 'ArchitypeRenner',
                      fontWeight: FontWeight.w600,
                    ),
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16.r,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.hintColor),
                    )),
              ),
            ),
            const Gap(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.r),
              child: TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    hintText: "App settings",
                    hintStyle: const TextStyle(
                      color: AppColor.blackColor,
                      fontSize: 14,
                      fontFamily: 'ArchitypeRenner',
                      fontWeight: FontWeight.w600,
                    ),
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16.r,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.hintColor),
                    )),
              ),
            ),
            const Gap(10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.r),
              child: TextFormField(
                readOnly: true,
                decoration: InputDecoration(
                    hintText: "Log out",
                    hintStyle: const TextStyle(
                      color: AppColor.blackColor,
                      fontSize: 14,
                      fontFamily: 'ArchitypeRenner',
                      fontWeight: FontWeight.w600,
                    ),
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16.r,
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: AppColor.hintColor),
                    )),
              ),
            ),
            const Gap(45),
            Text(
              'Edit Profiles',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF666666),
                fontSize: 16,
                decoration: TextDecoration.underline,
                fontFamily: 'ArchitypeRenner',
                fontWeight: FontWeight.w500,
                height: 0.04.r,
              ),
            )
          ],
        ),
      ),
    );
  }
}
