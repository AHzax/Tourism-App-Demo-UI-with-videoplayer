import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:wonder_verse_app/constants/app_color.dart';

class OopsScreen extends StatelessWidget {
  const OopsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: AppColor.backgroundColor,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Oops!',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFDE7B5C),
                fontSize: 48,
                fontFamily: 'ArchitypeRenner',
                fontWeight: FontWeight.w500,
              ),
            ),
            Gap(5),
            Text(
              'We’re working on something\nexciting! Please come back to\nthis section soon.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF111111),
                fontSize: 22,
                fontFamily: 'ArchitypeRenner',
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
