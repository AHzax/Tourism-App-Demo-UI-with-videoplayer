import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({super.key, required this.videoUrl});
  final String videoUrl;

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {
  late VideoPlayerController controller;
  late ChewieController chewieController;
  bool isInitialized = false;
  // Video360Controller? controller;
  String durationText = '';
  String totalText = '';

  @override
  void initState() {
    // flickManager = FlickManager(
    //     videoPlayerController: VideoPlayerController.networkUrl(
    //   Uri.parse(widget.videoUrl),
    // ));
    ////////////////
    controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    chewieController = ChewieController(
      videoPlayerController: controller,
      // autoPlay: true    ,
      looping: true,
      autoInitialize: true,
      showControls: true,
      zoomAndPan: true,
      showControlsOnInitialize: true,
      aspectRatio: 1.64 / 1, // Adjust aspect ratio according to your video
      allowFullScreen: true,
      fullScreenByDefault: true,
    );
    controller.initialize().then((value) => setState(() {}));
    super.initState();
  }

  //     ..initialize().then((_) {
  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();

    return SafeArea(
        child: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                setState(() {
                  controller.value.isPlaying
                      ? controller.pause()
                      : controller.play();
                });
              },
              child: Icon(
                controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
            ),
            body: Container(
              height: 250,
              child: chewieController != null &&
                      chewieController.videoPlayerController.value.isInitialized
                  ? Chewie(
                      controller: chewieController,
                    )
                  : Container(
                      child: CircularProgressIndicator(),
                    ),
            )));
  }

  @override
  void dispose() {
    chewieController.dispose();
    controller.dispose();

    super.dispose();
  }
  // void _onVideo360ViewCreated(Video360Controller controller) {
  //   this.controller = controller;
  //   this.controller?.play();
  // }
}
