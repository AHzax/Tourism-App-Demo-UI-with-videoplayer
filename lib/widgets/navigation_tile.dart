import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wonder_verse_app/constants/app_color.dart';

class NavigationTileWidget extends StatelessWidget {
  final String text;
  final String minutes;
  final double? padding;
  const NavigationTileWidget({
    super.key,
    required this.text,
    required this.minutes,
    this.padding,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 18.r),
      child: TextFormField(
        readOnly: true,
        decoration: InputDecoration(
            hintText: text,
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
                  Text(
                    minutes,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'ArchitypeRenner',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColor.hintColor),
            )),
      ),
    );
  }
}
