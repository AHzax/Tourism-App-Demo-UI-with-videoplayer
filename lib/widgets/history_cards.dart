import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class HistoryCardWidget extends StatelessWidget {
  final String text1;
  final String text2;
  final String img;
  const HistoryCardWidget({
    super.key,
    required this.text1,
    required this.text2,
    required this.img,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 1.sw / 2.3,
          height: 1.sh / 6.5,
          decoration: ShapeDecoration(
            image: DecorationImage(
              image: AssetImage(img),
              fit: BoxFit.cover,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            shadows: [
              BoxShadow(
                color: const Color(0x19000000),
                blurRadius: 20.r,
                offset: const Offset(0, 0),
                spreadRadius: 0,
              )
            ],
          ),
        ),
        const Gap(13),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 1.sw / 2.25,
              child: Text(
                text1,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.r,
                    fontFamily: 'ArchitypeRenner',
                    fontWeight: FontWeight.w500,
                    height: 0,
                    overflow: TextOverflow.clip),
              ),
            ),
            const Gap(13),
            Text(
              text2,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.r,
                fontFamily: 'ArchitypeRenner',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        ),
      ],
    );
  }
}
