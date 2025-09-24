// ignore_for_file: deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:mvvm/core/view_model/base_view_model.dart';
import 'package:video_player/video_player.dart';

class HomeViewModel extends BaseViewModel {
  final pageController = PageController();
  VideoPlayerController? videoController;
  bool isSelect = false;

  onClick() {
    isSelect = !isSelect;
    notifyListeners();
  }

  /// List of videos (TikTok style feed)
  final List<String> videos = [
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
    "https://sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
  ];

  initialVideo(int index) async {
    videoController?.dispose(); // free old controller

    videoController = VideoPlayerController.network(videos[index]);

    await videoController!.initialize();
    videoController!.setLooping(true);
    videoController!.play();

    notifyListeners();
  }
}
