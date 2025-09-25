// ignore_for_file: deprecated_member_use, curly_braces_in_flow_control_structures

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

  HomeViewModel() {
    videos();
  }

  /// List of videos (TikTok style feed)
  final List<String> videoslist = [
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
    "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
  ];

  videos() async {
    for (var url in videoslist) {
      videoController = VideoPlayerController.networkUrl(Uri.parse(url));
      await videoController!.initialize();
      videoController!.setLooping(true);
    }
    videoController!.play();
    notifyListeners();
  }
}
