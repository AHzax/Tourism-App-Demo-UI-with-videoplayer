import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wonder_verse_app/blocs/main_bloc/main_bloc.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/pages/home/home_screen.dart';

import 'activities/activities_screen.dart';
import 'profile/profile_screen.dart';
import 'watch/watch_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // final String? args = ModalRoute.of(context)?.settings.arguments;
    // print("::::::::::hi::::args:->${args.toString()}");
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
                context.read<MainBloc>().add(const SelectPageEvent(index: 0));
              },
              color: AppColor.navItemOneColor,
            ),
            NavItemWidget(
              title: 'Watch',
              onTap: () {
                context.read<MainBloc>().add(const SelectPageEvent(index: 1));
              },
              color: AppColor.navItemTwoColor,
            ),
            NavItemWidget(
              title: 'Activities',
              onTap: () {
                context.read<MainBloc>().add(const SelectPageEvent(index: 2));
              },
              color: AppColor.navItemThreeColor,
            ),
            NavItemWidget(
              title: 'Profile',
              onTap: () {
                context.read<MainBloc>().add(const SelectPageEvent(index: 3));
              },
              color: AppColor.navItemFourColor,
            ),
          ],
        ),
      ),
      body: BlocBuilder<MainBloc, MainBlocState>(
        builder: (context, state) {
          return IndexedStack(
            index: state.currentIndex,
            children: const [
              HomeScreen(),
              WatchScreen(),
              ActivitiesScreen(),
              ProfileScreen(),
            ],
          );
        },
      ),
    );
  }
}

class NavItemWidget extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onTap;
  const NavItemWidget(
      {super.key,
      required this.title,
      required this.color,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15.r),
        child: Text(
          title,
          style: TextStyle(
              color: color,
              fontSize: 18.r,
              fontWeight: FontWeight.w600,
              fontFamily: "ArchitypeRenner"),
        ),
      ),
    );
  }
}
