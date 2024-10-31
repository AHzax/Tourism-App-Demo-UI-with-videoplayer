import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/constants/app_images.dart';
import 'package:wonder_verse_app/constants/app_strings.dart';
import 'package:wonder_verse_app/pages/main_screen.dart';

import '../../blocs/main_bloc/main_bloc.dart';

class ContentControlPage extends StatelessWidget {
  const ContentControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      bottomNavigationBar: BottomAppBar(
        surfaceTintColor: AppColor.whiteColor,
        color: AppColor.whiteColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavItemWidget(
              title: 'Home',
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  "main",
                );
                context.read<MainBloc>().add(const SelectPageEvent(index: 0));
              },
              color: AppColor.navItemOneColor,
            ),
            NavItemWidget(
              title: 'Watch',
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  "main",
                );
                context.read<MainBloc>().add(const SelectPageEvent(index: 1));
              },
              color: AppColor.navItemTwoColor,
            ),
            NavItemWidget(
              title: 'Activities',
              onTap: () {
                Navigator.pushReplacementNamed(context, "main");
                context.read<MainBloc>().add(const SelectPageEvent(index: 2));
              },
              color: AppColor.navItemThreeColor,
            ),
            NavItemWidget(
              title: 'Profile',
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  "main",
                );
                context.read<MainBloc>().add(const SelectPageEvent(index: 3));
              },
              color: AppColor.navItemFourColor,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        leading: InkWell(
            onTap: () {
              Navigator.pushReplacementNamed(context, 'main');
              context.read<MainBloc>().add(const SelectPageEvent(index: 3));
            },
            child: const Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            AppStrings.contentControl,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 28.r,
                color: AppColor.blackFontColor,
                fontFamily: "ArchitypeRenner"),
          ),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.r),
              child: InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  AppImages.wishlistSearchIcon,
                  height: 21.r,
                  width: 21.r,
                ),
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1.sh / 1.13,
          width: 1.sw,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(30),
              Container(
                alignment: Alignment.center,
                width: 339.r,
                height: 26.r,
                decoration: ShapeDecoration(
                  color: const Color(0xFFEDB736),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1.r),
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                ),
                child: Text(
                  'Daily',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.r,
                    fontFamily: 'ArchitypeRenner',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ),
              const Gap(40),
              const Text(
                'Customise your child’s daily learning\nexperience.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'ArchitypeRenner',
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              ),
              const Gap(30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.r, vertical: 5.r),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CATEGORY',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                    Text(
                      'TIME LIMIT',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.r),
                child: const Divider(
                  color: AppColor.hintColor,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.r),
                child: TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                      hintText: "Science",
                      hintStyle: const TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 14,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                      suffixIcon: SizedBox(
                        width: 1.sw / 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '60 min',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'ArchitypeRenner',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            const Gap(7),
                            SvgPicture.asset(AppImages.upDownArrowIcon),
                          ],
                        ),
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
                      hintText: "Dance",
                      hintStyle: const TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 16,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                      suffixIcon: SizedBox(
                        width: 1.sw / 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '30 min',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'ArchitypeRenner',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            const Gap(7),
                            SvgPicture.asset(AppImages.upDownArrowIcon),
                          ],
                        ),
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
                      hintText: "Nature",
                      hintStyle: const TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 16,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                      suffixIcon: SizedBox(
                        width: 1.sw / 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '120 min',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'ArchitypeRenner',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            const Gap(7),
                            SvgPicture.asset(AppImages.upDownArrowIcon),
                          ],
                        ),
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
                      hintText: "Wellness",
                      hintStyle: const TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 16,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                      suffixIcon: SizedBox(
                        width: 1.sw / 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '60 min',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'ArchitypeRenner',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            const Gap(7),
                            SvgPicture.asset(AppImages.upDownArrowIcon),
                          ],
                        ),
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
                      hintText: "Create",
                      hintStyle: const TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 16,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                      suffixIcon: SizedBox(
                        width: 1.sw / 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '30 min',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'ArchitypeRenner',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            const Gap(7),
                            SvgPicture.asset(AppImages.upDownArrowIcon),
                          ],
                        ),
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
                      hintText: "Language",
                      hintStyle: const TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 16,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                      suffixIcon: SizedBox(
                        width: 1.sw / 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '20 min',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'ArchitypeRenner',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            const Gap(7),
                            SvgPicture.asset(AppImages.upDownArrowIcon),
                          ],
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColor.hintColor),
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.r),
                child: TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                      hintText: "Maths",
                      hintStyle: const TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 16,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                      suffixIcon: SizedBox(
                        width: 1.sw / 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '30 min',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'ArchitypeRenner',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            const Gap(7),
                            SvgPicture.asset(AppImages.upDownArrowIcon),
                          ],
                        ),
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
                      hintText: "Cook",
                      hintStyle: const TextStyle(
                        color: AppColor.blackColor,
                        fontSize: 16,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                      suffixIcon: SizedBox(
                        width: 1.sw / 4,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              '60 min',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontFamily: 'ArchitypeRenner',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                            const Gap(7),
                            SvgPicture.asset(AppImages.upDownArrowIcon),
                          ],
                        ),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: AppColor.hintColor),
                      )),
                ),
              ),
              const Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
