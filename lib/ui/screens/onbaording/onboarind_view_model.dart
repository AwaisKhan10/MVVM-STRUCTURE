import 'package:flutter/material.dart';
import 'package:mvvm/core/constant/string.dart';
import 'package:mvvm/core/view_model/base_view_model.dart';
import 'package:mvvm/core/model/onbaoring_model.dart';

class OnbaordingViewModel extends BaseViewModel {
  final PageController pageController = PageController();
  int currentIndex = 0;

  final List<OnbaordingItem> items = [
    OnbaordingItem(
      image: "$staticAssets/obaording1.png",
      title: "Watch Videos &\nEarn Points",
      subtitle: "Lorem ipsum dolor sit amet,\nconsectetur adipiscing.",
    ),
    OnbaordingItem(
      image: "$staticAssets/obaording2.png",
      title: "Learn Anytime,\nAnywhere",
      subtitle: "Study smart with flexible and interactive content.",
    ),
    OnbaordingItem(
      image: "$staticAssets/obaording3.png",
      title: "Track Your\nProgress",
      subtitle: "Monitor your achievements and stay motivated daily.",
    ),
  ];

  void onPageChanged(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
