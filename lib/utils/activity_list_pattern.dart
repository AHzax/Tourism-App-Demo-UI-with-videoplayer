// ignore_for_file: unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wonder_verse_app/constants/app_color.dart';
import 'package:wonder_verse_app/constants/app_font.dart';
import 'package:wonder_verse_app/constants/app_images.dart';

import '../pages/activities/activities_detail_screen.dart';

class ActivityListViewWithPattern extends StatelessWidget {
  const ActivityListViewWithPattern({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      AppImages.fruits,
      AppImages.birds,
      AppImages.parrot,
      AppImages.painting,
      AppImages.person,
      AppImages.color,
      AppImages.paper,
      AppImages.camera,
      AppImages.baloon,
      AppImages.moon,
    ];
    final List<String> text = [
      'Create a Vegetable Poster',
      'Colouring Sheet Birds',
      'Parrot Greens',
      'Painting Pantones',
      'My First Portrait',
      'Mixing Colours',
      'Cursive Writing',
      'Beginner’s Photography',
      'Balloon Activity',
      'Phases of the Moon',
    ];

    final List<String> nextScreenTitles = [
      'Vegetables',
      'Birds',
      'Parrots',
      'Painting',
      'Portraits',
      'Colour',
      'Cursive Writing',
      'Photography',
      'Balloons',
      'Phases',
    ];
    List<Widget> children = [];
    for (int i = 0; i < images.length; i++) {
      children.add(
        InkWell(
          onTap: () {
            Navigator.pushReplacementNamed(
              context,
              'activityDetail',
              arguments: ActivityDetailSceen(
                text: text[i],
                image: images[i],
                title: nextScreenTitles[i],
              ),
            );
          },
          child: Container(
            height: 216.h,
            width: 158.w,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 83, 83, 83)
                      .withOpacity(0.2), // Shadow color
                  spreadRadius: 1, // Spread radius
                  blurRadius: 16, // Blur radius
                  offset: const Offset(-1, 1), // Offset (vertical, horizontal)
                ),
              ],
              borderRadius: BorderRadius.circular(18.r),
              image: DecorationImage(
                  image: AssetImage(
                    images[i],
                  ),
                  fit: BoxFit.cover),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10.w),
                  height: 46.51.h,
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(18.r),
                      bottomRight: Radius.circular(18.r),
                    ),
                  ),
                  child: Text(
                    textAlign: TextAlign.start,
                    text[i],
                    style: AppTextStyle.renner13Medium500()
                        .copyWith(fontSize: 13.sp, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      if ((i + 1) % 4 == 0) {
        children.add(
          StaggeredGridTile.fit(
            crossAxisCellCount: 2,
            child: SingleContainerImage(index: (i + 1) ~/ 5),
          ),
        );
      }
    }
    return SingleChildScrollView(
      child: Container(
        color: AppColor.backgroundColor,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 18.h,
          ),
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            mainAxisSpacing: 35.r,
            crossAxisSpacing: 25.r,
            children: children,
          ),
        ),
      ),
    );
  }
}

class SingleContainerImage extends StatelessWidget {
  final int index;

  const SingleContainerImage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      AppImages.books,
      AppImages.flower,
    ];
    final List<String> text = [
      'Reading Made Fun',
      'Paper Flower Garden',
    ];
    final nextScreenTitles = ['Reading', 'Flowers'];
    return InkWell(
      onTap: () {
        Navigator.pushReplacementNamed(
          context,
          'activityDetail',
          arguments: ActivityDetailSceen(
            text: text[index],
            image: images[index],
            title: nextScreenTitles[index],
          ),
        );
      },
      child: Container(
        width: 339.w,
        height: 401.h,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 0, 0, 0)
                  .withOpacity(0.2), // Shadow color
              spreadRadius: 1, // Spread radius
              blurRadius: 10, // Blur radius
              offset: const Offset(-1, 1), // Offset (vertical, horizontal)
            ),
          ],
          borderRadius: BorderRadius.circular(18.r),
          image: DecorationImage(
            image: AssetImage(
              images[index],
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Container(
                height: 46.51.h,
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18.r),
                    bottomRight: Radius.circular(18.r),
                  ),
                ),
                child: Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: 12.w,
                        ),
                        child: Text(
                          text[index],
                          style: AppTextStyle.renner13Medium500()
                              .copyWith(fontSize: 16.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

    //  ListView.builder(
    //   itemCount: 8,
    //   shrinkWrap: true,
    //   itemBuilder: (BuildContext context, int index) {
    //     if (index == 2 || index == 5) {
    //       return Center(
    //         child: Container(
    //           height: 401.h,
    //           width: 339.w,
    //           decoration: BoxDecoration(
    //             image: DecorationImage(
    //               image: AssetImage(
    //                 largeImage[index],
    //               ),
    //             ),
    //             borderRadius: BorderRadius.circular(18.r),
    //           ),
    //         ),
    //       );
    //     } else {
    //       return Padding(
    //         padding: const EdgeInsets.all(8.0),
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           children: [
    //             Container(
    //               height: 216.h,
    //               width: 158.w,
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(18.r),
    //                 image: DecorationImage(
    //                   image: AssetImage(imageAsset[index]),
    //                   fit: BoxFit.cover,
    //                 ),
    //               ),
    //               child: Column(
    //                 mainAxisAlignment: MainAxisAlignment.end,
    //                 children: [
    //                   Container(
    //                     height: 46.h,
    //                     decoration: BoxDecoration(
    //                       color: Colors.white,
    //                       borderRadius: BorderRadius.only(
    //                         bottomRight: Radius.circular(18.r),
    //                         bottomLeft: Radius.circular(18.r),
    //                       ),
    //                     ),
    //                     child: Center(
    //                       child: Text(
    //                         text[index],
    //                         style: AppTextStyle.renner13Medium500().copyWith(
    //                           fontSize: 12.sp,
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //             Container(
    //               height: 216.h,
    //               width: 158.w,
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(18.r),
    //                 image: DecorationImage(
    //                   image: AssetImage(imageAsset2[index]),
    //                   fit: BoxFit.cover,
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       );
    //     }
    //   },
    // );
 
