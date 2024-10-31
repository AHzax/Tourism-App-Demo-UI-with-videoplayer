import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wonder_verse_app/constants/app_images.dart';
import 'package:wonder_verse_app/models/watch_item_model.dart';
import 'package:wonder_verse_app/utils/topic_list_item.dart';

import '../../constants/app_font.dart';
import '../../models/topic_model.dart';

class TopicWatchListScreen extends StatelessWidget {
  final WatchItemModel watchItemModel;
  final List<TopicModel> topicsList;
  const TopicWatchListScreen({
    super.key,
    required this.watchItemModel,
    required this.topicsList,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: watchItemModel.color,
        appBar: AppBar(
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 20.r),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "oopsScreen");
                  },
                  child: SvgPicture.asset(
                    AppImages.wishlistSearchIcon,
                    height: 21.r,
                    width: 21.r,
                  ),
                )),
          ],
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          centerTitle: true,
          title: Text(
            watchItemModel.title,
            style: AppTextStyle.renner28Medium500(),
          ),
        ),
        body: ListView.builder(
            padding: EdgeInsets.only(
                right: 14.r, left: 14.r, bottom: 20.r, top: 40.r),
            shrinkWrap: true,
            itemCount: topicsList.length,
            itemBuilder: (_, index) => InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      'videoScreen',
                      arguments: {
                        'videoUrl':
                            'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4',
                      },
                    );
                    return;
                  },
                  child: TopicListItem(
                      imageAsset: topicsList[index].image,
                      titleAssets: topicsList[index].title,
                      timeAssets: topicsList[index].time),
                )));
  }
}
