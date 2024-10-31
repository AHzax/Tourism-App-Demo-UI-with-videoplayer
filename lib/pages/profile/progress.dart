// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:wonder_verse_app/blocs/main_bloc/main_bloc.dart';
import 'package:wonder_verse_app/blocs/tabar_bloc/tabbar_bloc.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/constants/app_images.dart';
import 'package:wonder_verse_app/constants/app_strings.dart';

import '../../widgets/navigation_tile.dart';
import '../main_screen.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                context.read<MainBloc>().add(SelectPageEvent(index: 0));
              },
              color: AppColor.navItemOneColor,
            ),
            NavItemWidget(
              title: 'Watch',
              onTap: () {
                Navigator.pushReplacementNamed(context, "main", arguments: "1");
                context.read<MainBloc>().add(SelectPageEvent(index: 1));
              },
              color: AppColor.navItemTwoColor,
            ),
            NavItemWidget(
              title: 'Activities',
              onTap: () {
                Navigator.pushReplacementNamed(context, "main", arguments: "2");
                context.read<MainBloc>().add(SelectPageEvent(index: 2));
              },
              color: AppColor.navItemThreeColor,
            ),
            NavItemWidget(
              title: 'Profile',
              onTap: () {
                Navigator.pushReplacementNamed(context, "main", arguments: "3");
                context.read<MainBloc>().add(SelectPageEvent(index: 3));
              },
              color: AppColor.navItemFourColor,
            ),
          ],
        ),
      ),
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        title: Center(
          child: Text(
            AppStrings.progress,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 28.r,
              color: AppColor.blackFontColor,
              fontFamily: "ArchitypeRenner",
            ),
          ),
        ),
        leading: InkWell(
          child: const Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.pushReplacementNamed(context, 'main');
            context.read<MainBloc>().add(const SelectPageEvent(index: 3));
          },
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.r),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'oopsScreen');
                },
                child: SvgPicture.asset(
                  AppImages.wishlistSearchIcon,
                  height: 21.r,
                  width: 21.r,
                ),
              )),
        ],
      ),
      body: BlocBuilder<TabbarBloc, TabbarState>(
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Gap(30),
                SizedBox(
                  width: 1.sw,
                  child: CupertinoSegmentedControl<int>(
                    onValueChanged: (value) {
                      context
                          .read<TabbarBloc>()
                          .add(SelectTabEvent(index: value));
                    },
                    children: {
                      0: Text(
                        'Day',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'ArchitypeRenner',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      1: Text(
                        'Week',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'ArchitypeRenner',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      2: Text(
                        'Month',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'ArchitypeRenner',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    },
                    padding: const EdgeInsets.all(12),
                    groupValue: state.index,
                    selectedColor: state.index == 0
                        ? AppColor.profileYellowColor
                        : state.index == 1
                            ? AppColor.navItemThreeColor
                            : AppColor.profileOrangeColor,
                    pressedColor: Colors.green.shade100,
                    unselectedColor: Colors.white,
                    borderColor: Colors.black,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: IndexedStack(
                    index: state.index,
                    children: [
                      /////////////////////////////tab1///////////////////////////

                      CustomTabView(
                        title: 'TODAY',
                        heading:
                            'Charlotte spent about 2h 16m \n on Wonder today.',
                        leftHeading: 'YESTERDAY',
                      ),
                      //////////////////////////////tab2///////////////////////////

                      CustomTabView2(
                        title: 'WEEK',
                        heading:
                            'Charlotte spent about 10h \n on Wonder this week.',
                        leftHeading: 'LAST WEEK',
                      ),
                      //////////////////////////////tab3///////////////////////////
                      CustomTabView3(
                        title: 'MONTH',
                        heading:
                            'Charlotte spent about 29h 15m \n on Wonder this month.',
                        leftHeading: 'LAST MONTH',
                      ),
                      ////////////////////////////////
                    ],
                  ),
                ),

                /*  ReusableTabWithFilterList(tabBarView:, tabs: [
                    Container(
                      padding: EdgeInsets.all(0),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  color: AppColor.blackColor,
                                  width: 1.5,
                                  style: BorderStyle.solid))),
                      child: Tab(
                          child: Text(
                        'Day',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'ArchitypeRenner',
                            fontWeight: FontWeight.w500,
                            height: 1.8),
                      )),
                    ),
                    Tab(
                        child: SizedBox(
                      child: Text(
                        'Week',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'ArchitypeRenner',
                            fontWeight: FontWeight.w500,
                            height: 1.8),
                      ),
                    )),
                    Tab(
                        child: Text(
                      'Month',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w500,
                        height: 1.8,
                      ),
                    )),
                  ], tabLength: 3)
                */
              ],
            ),
          );
        },
      ),
    );
  }
}

class CustomTabView extends StatelessWidget {
  final String title;
  final String heading;
  final String leftHeading;
  const CustomTabView({
    super.key,
    required this.title,
    required this.heading,
    required this.leftHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(30),
        Text(
          heading,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'ArchitypeRenner',
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(20),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.r),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 13,
                  ),
                  Text(
                    leftHeading,
                    style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 14,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w500,
                        height: 1.6),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'ArchitypeRenner',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 55.r),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 13.r,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: AppColor.hintColor,
        ),
        const NavigationTileWidget(
            padding: 0, text: "Science", minutes: "25 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Dance", minutes: "15 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Nature", minutes: "5 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Wellness", minutes: "30 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Create", minutes: "2 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Language", minutes: "3 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Maths", minutes: "20 min"),
        const Gap(3),
        const NavigationTileWidget(padding: 0, text: "Cook", minutes: "30 min"),
      ],
    );
  }
}

class CustomTabView2 extends StatelessWidget {
  final String title;
  final String heading;
  final String leftHeading;
  const CustomTabView2({
    super.key,
    required this.title,
    required this.heading,
    required this.leftHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(30),
        Text(
          heading,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'ArchitypeRenner',
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(20),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.r),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 13,
                  ),
                  Text(
                    leftHeading,
                    style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 14,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w500,
                        height: 1.6),
                  ),
                ],
              ),
              Text(
                title,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'ArchitypeRenner',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 55.r),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 13.r,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: AppColor.hintColor,
        ),
        const NavigationTileWidget(
            padding: 0, text: "Wellness", minutes: "30 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Create", minutes: "2 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Language", minutes: "3 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Maths", minutes: "20 min"),
        const Gap(3),
        const NavigationTileWidget(padding: 0, text: "Cook", minutes: "30 min"),
        const NavigationTileWidget(
            padding: 0, text: "Science", minutes: "25 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Dance", minutes: "15 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Nature", minutes: "5 min"),
        const Gap(3),
      ],
    );
  }
}

class CustomTabView3 extends StatelessWidget {
  final String title;
  final String heading;
  final String leftHeading;
  const CustomTabView3({
    super.key,
    required this.title,
    required this.heading,
    required this.leftHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(30),
        Text(
          heading,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'ArchitypeRenner',
            fontWeight: FontWeight.w500,
          ),
        ),
        const Gap(20),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5.r),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 13,
                  ),
                  Text(
                    leftHeading,
                    style: TextStyle(
                        color: Color(0xFF999999),
                        fontSize: 14,
                        fontFamily: 'ArchitypeRenner',
                        fontWeight: FontWeight.w500,
                        height: 1.6),
                  ),
                ],
              ),
              Text(
                title,
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'ArchitypeRenner',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 55.r),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 13.r,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          color: AppColor.hintColor,
        ),
        const NavigationTileWidget(
            padding: 0, text: "Nature", minutes: "5 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Wellness", minutes: "30 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Create", minutes: "2 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Language", minutes: "3 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Science", minutes: "25 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Dance", minutes: "15 min"),
        const Gap(3),
        const NavigationTileWidget(
            padding: 0, text: "Maths", minutes: "20 min"),
        const Gap(3),
        const NavigationTileWidget(padding: 0, text: "Cook", minutes: "30 min"),
      ],
    );
  }
}
