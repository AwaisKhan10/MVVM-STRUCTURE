import 'package:flutter/material.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/ui/custom_widget/custom_onbaording.dart';
import 'package:mvvm/ui/screens/onbaording/onboarind_view_model.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnbaordingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => OnbaordingViewModel(),
      child: Consumer<OnbaordingViewModel>(
        builder: (context, value, child) => Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: value.pageController,
                  itemCount: value.items.length,
                  onPageChanged: value.onPageChanged,
                  itemBuilder: (context, index) {
                    return CustomOnboaring(
                      onbaordingItem: value.items[index],
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 120.0, left: 30),
                child: SmoothPageIndicator(
                    controller: value.pageController, // PageController
                    count: value.items.length ?? 0,
                    effect: const WormEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        dotColor: lightBlack,
                        activeDotColor: greenColor), // your preferred effect
                    onDotClicked: (index) {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
