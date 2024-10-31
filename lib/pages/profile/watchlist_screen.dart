import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/constants/app_font.dart';
import 'package:wonder_verse_app/constants/app_images.dart';
import 'package:wonder_verse_app/constants/app_size.dart';
import 'package:wonder_verse_app/constants/app_strings.dart';
import 'package:wonder_verse_app/pages/main_screen.dart';

import '../../blocs/main_bloc/main_bloc.dart';

class WatchlistPage extends StatefulWidget {
  const WatchlistPage({super.key});

  @override
  State<WatchlistPage> createState() => _WatchlistPageState();
}

class _WatchlistPageState extends State<WatchlistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        title: Center(
          child: Text(
            AppStrings.wishlistTitle,
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
        // leading: Padding(
        //     padding: EdgeInsets.only(left: 10.r),
        //     child: InkWell(
        //         onTap: () {
        //           Navigator.pop(context);
        //         },
        //         child: const Icon(Icons.arrow_back_ios))),
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
      body: Padding(
        padding: AppSize.overallPadding,
        child: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImages.wishlistAddIcon,
              ),
              const Gap(15),
              const Text(
                "Your Watchlist is empty",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: AppFont.renner,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(12),
              const Text(
                "Content you add to your watchlist will appear \n here.",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: AppFont.renner,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
