// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/constants/app_font.dart';
import 'package:wonder_verse_app/models/profile_model.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProfileModel> profilesList = getProfilesList();

    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 18.w,
                ),
                child: Text(
                  'Edit Profiles',
                  style: AppTextStyle.renner13Medium500()
                      .copyWith(fontSize: 13.sp, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Gap(60.h),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Who’s Watching?',
                style: AppTextStyle.renner28Medium500(),
              ),
              SizedBox(
                height: 32.h,
              ),
              GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 0.0,
                    crossAxisSpacing: 0.0,
                    mainAxisExtent: 160.h),
                shrinkWrap: true,
                itemCount: profilesList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      SvgPicture.asset(
                        profilesList[index].image,
                        height: 110.h,
                        width: 110.w,
                      ),
                      Gap(5.h),
                      Text(
                        profilesList[index].name,
                        style: AppTextStyle.renner16Medium500(),
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
