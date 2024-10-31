// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wonder_verse_app/constants/app_font.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      required this.actionIcon,
      required this.text,
      this.backgroundColor,
      required this.onTap,
      this.leadingIcon,
      this.onLeadingTap});
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final Widget actionIcon;
  final Widget? leadingIcon;
  final String text;
  final Color? backgroundColor;
  final VoidCallback onTap;
  final VoidCallback? onLeadingTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      title: Text(
        text,
        style: AppTextStyle.renner28Medium500(),
      ),
      leading: leadingIcon != null
          ? InkWell(onTap: onLeadingTap, child: leadingIcon)
          : null,
      actions: [
        Padding(
          padding: EdgeInsets.only(
            right: 20.w,
          ),
          child: InkWell(
            onTap: onTap,
            child: actionIcon,
          ),
        ),
      ],
    );
  }
}
