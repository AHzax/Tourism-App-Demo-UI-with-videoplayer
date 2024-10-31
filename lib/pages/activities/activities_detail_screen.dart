import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wonder_verse_app/constants/app_font.dart';
import 'package:wonder_verse_app/utils/custom_appbar.dart';

import '../../blocs/main_bloc/main_bloc.dart';
import '../../constants/app_color.dart';
import '../../constants/app_images.dart';
import '../main_screen.dart';

class ActivityDetailSceen extends StatelessWidget {
  const ActivityDetailSceen({
    super.key,
    required this.text,
    required this.image,
    required this.title,
  });
  final String text;
  final String image;
  final String title;
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
                Navigator.pushReplacementNamed(context, "main", arguments: '0');
                context.read<MainBloc>().add(const SelectPageEvent(index: 0));
              },
              color: AppColor.navItemOneColor,
            ),
            NavItemWidget(
              title: 'Watch',
              onTap: () {
                Navigator.pushReplacementNamed(context, "main", arguments: "1");
                context.read<MainBloc>().add(const SelectPageEvent(index: 1));
              },
              color: AppColor.navItemTwoColor,
            ),
            NavItemWidget(
              title: 'Activities',
              onTap: () {
                Navigator.pushReplacementNamed(context, "main", arguments: "2");
                context.read<MainBloc>().add(const SelectPageEvent(index: 2));
              },
              color: AppColor.navItemThreeColor,
            ),
            NavItemWidget(
              title: 'Profile',
              onTap: () {
                Navigator.pushReplacementNamed(context, "main", arguments: "3");
                context.read<MainBloc>().add(const SelectPageEvent(index: 3));
              },
              color: AppColor.navItemFourColor,
            ),
          ],
        ),
      ),
      appBar: CustomAppBar(
        backgroundColor: const Color(0xffDD7A5B),
        actionIcon: SvgPicture.asset(
          AppImages.wishlistSearchIcon,
          height: 21.r,
          width: 21.r,
        ),
        leadingIcon: const Icon(Icons.arrow_back_ios),
        onLeadingTap: () {
          Navigator.pushReplacementNamed(context, 'main');
          context.read<MainBloc>().add(const SelectPageEvent(index: 2));
        },
        text: title,
        onTap: () {
          Navigator.pushNamed(context, 'oopsScreen');
        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 300.h,
                color: const Color(0xffDD7A5B),
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.only(
                    top: 10.r,
                  ),
                  height: 1.sh / 1.9,
                  width: 1.sw / 1.1,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(47, 0, 0, 0),
                        blurRadius: 8,
                        offset: Offset(-1, 1),
                        spreadRadius: 3,
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  text,
                  style: AppTextStyle.renner16Medium500(),
                ),
                SizedBox(
                  width: 297.w,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    textAlign: TextAlign.center,
                    style: AppTextStyle.renner12Medium500(),
                  ),
                ),
                Text(
                  'Send to Print',
                  style: AppTextStyle.renner16Medium500().copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
