import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wonder_verse_app/blocs/main_bloc/main_bloc.dart';
import 'package:wonder_verse_app/blocs/tabar_bloc/tabbar_bloc.dart';
import 'package:wonder_verse_app/constants/app_routes.dart';
import 'package:wonder_verse_app/constants/app_strings.dart';
import 'package:wonder_verse_app/pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

//usama-new
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ],
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => MainBloc()),
        BlocProvider(create: (_) => TabbarBloc()),
      ],
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            onGenerateRoute: AppRoute.onGenerateRoute,
            debugShowCheckedModeBanner: false,
            title: AppStrings.title,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              fontFamily: "ArchitypeRenner",
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
            ),
            home: child,
          );
        },
        child: const SplashScreen(),
      ),
    );
  }
}
