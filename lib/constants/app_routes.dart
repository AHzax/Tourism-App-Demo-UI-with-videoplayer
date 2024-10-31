import 'package:flutter/material.dart';
import 'package:wonder_verse_app/models/topic_model.dart';
import 'package:wonder_verse_app/models/watch_item_model.dart';
import 'package:wonder_verse_app/pages/activities/activities_detail_screen.dart';
import 'package:wonder_verse_app/pages/activities/activities_screen.dart';
import 'package:wonder_verse_app/pages/home/edit_profile_screen.dart';
import 'package:wonder_verse_app/pages/home/home_screen.dart';
import 'package:wonder_verse_app/pages/main_screen.dart';
import 'package:wonder_verse_app/pages/profile/content_control_screen.dart';
import 'package:wonder_verse_app/pages/profile/history_screen.dart';
import 'package:wonder_verse_app/pages/profile/oops_screen.dart';
import 'package:wonder_verse_app/pages/profile/progress.dart';
import 'package:wonder_verse_app/pages/profile/watchlist_screen.dart';
import 'package:wonder_verse_app/pages/splash_screen.dart';
import 'package:wonder_verse_app/pages/watch/topic_watch_list_screen.dart';
import 'package:wonder_verse_app/pages/watch/video_screen.dart';
import 'package:wonder_verse_app/pages/watch/watch_screen.dart';

import '../pages/profile/profile_screen.dart';

class AppRoute {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'splash':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case 'home':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case 'watch':
        return MaterialPageRoute(builder: (_) => const WatchScreen());
      case 'activities':
        return MaterialPageRoute(builder: (_) => const ActivitiesScreen());

      case 'profile':
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case 'main':
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case 'history':
        return MaterialPageRoute(builder: (_) => const HistoryPage());
      case 'watchListPage':
        return MaterialPageRoute(builder: (_) => const WatchlistPage());
      case 'contentControlPage':
        return MaterialPageRoute(builder: (_) => const ContentControlPage());
      case 'progressPage':
        return MaterialPageRoute(builder: (_) => const ProgressPage());
      case 'activityDetail':
        final args = settings.arguments as ActivityDetailSceen;
        return MaterialPageRoute(
          builder: (_) => ActivityDetailSceen(
            text: args.text,
            image: args.image,
            title: args.title,
          ),
        );
      case 'editprofile':
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
      case 'oopsScreen':
        return MaterialPageRoute(builder: (_) => const OopsScreen());
      case 'videoScreen':
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        final videoUrl = args['videoUrl'] as String;
        return MaterialPageRoute(
            builder: (_) => VideoScreen(
                  videoUrl: videoUrl,   
                ));
      case 'watchList':
        final Map<String, dynamic> args =
            settings.arguments as Map<String, dynamic>;
        final List<TopicModel> topicsList = args['topics'] as List<TopicModel>;
        final WatchItemModel watchItemModel =
            args['mainTopic'] as WatchItemModel;
        return MaterialPageRoute(
            builder: (_) => TopicWatchListScreen(
                  watchItemModel: watchItemModel,
                  topicsList: topicsList,
                ));
    }
    return noPage();
  }

  static MaterialPageRoute<dynamic> noPage() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Page Not Found'),
            ),
          ],
        ),
      ),
    );
  }
}
