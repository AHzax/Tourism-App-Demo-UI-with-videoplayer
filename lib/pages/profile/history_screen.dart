import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/constants/app_images.dart';
import 'package:wonder_verse_app/constants/app_size.dart';
import 'package:wonder_verse_app/constants/app_strings.dart';
import 'package:wonder_verse_app/pages/main_screen.dart';
import 'package:wonder_verse_app/widgets/history_cards.dart';

import '../../blocs/main_bloc/main_bloc.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

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
                Navigator.pushReplacementNamed(context, "main");
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
                Navigator.pushReplacementNamed(context, "main");
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
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pushReplacementNamed(context, 'main');
            context.read<MainBloc>().add(const SelectPageEvent(index: 3));
          },
        ),
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            AppStrings.history,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 28.r,
              color: AppColor.blackFontColor,
              fontFamily: "ArchitypeRenner",
            ),
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
        child: Padding(
          padding: AppSize.overallPadding,
          child: SizedBox(
            height: 1.sh / 1.2,
            width: 1.sw,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Gap(30),
                HistoryCardWidget(
                    text1: "10min Morning Stretch",
                    text2: "3:00",
                    img: AppImages.wellnessStretchImage),
                Gap(35),
                HistoryCardWidget(
                    text1: "Maths Activities for Everyone",
                    text2: "5:00",
                    img: AppImages.mathsAlgebraImage),
                Gap(35),
                HistoryCardWidget(
                    text1: "The National History Museum",
                    text2: "15:00",
                    img: AppImages.museumImage),
                Gap(35),
                HistoryCardWidget(
                    text1: "Decorating Donuts",
                    text2: "5:00",
                    img: AppImages.donutImage),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
