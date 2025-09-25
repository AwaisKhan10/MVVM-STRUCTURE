// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mvvm/core/constant/text_style.dart';
import 'package:mvvm/ui/screens/home_screen/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, model, child) => Scaffold(
          ///
          /// Start Body
          ///
          body: PageView.builder(
              scrollDirection: Axis.vertical,
              controller: model.pageController,
              itemCount: model.videoslist.length,
              itemBuilder: (context, index) {
                return SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                      width: model.videoController!.value.size.width,
                      height: model.videoController!.value.size.height,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          VideoPlayer(
                            model.videoController!,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "AWAIS KHAN",
                                style: style30,
                              ),
                              Text(
                                "AWAIS KHAN",
                                style: style30,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class TikTokVideoPage extends StatefulWidget {
//   @override
//   _TikTokVideoPageState createState() => _TikTokVideoPageState();
// }

// class _TikTokVideoPageState extends State<TikTokVideoPage> {
//   final PageController _pageController = PageController();
//   final List<String> videos = [
//     "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//     "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//     "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//   ];

//   int currentIndex = 0;
//   VideoPlayerController? _controller;

//   @override
//   void initState() {
//     super.initState();
//     _initializeVideo(currentIndex);
//   }

//   void _initializeVideo(int index) {
//     _controller?.dispose();
//     // ignore: deprecated_member_use
//     _controller = VideoPlayerController.network(
//       "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
//     )..initialize().then((_) {
//         setState(() {});
//         _controller!.play();
//         _controller!.setLooping(true);
//       });
//   }

//   @override
//   void dispose() {
//     _controller?.dispose();
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView.builder(
//         scrollDirection: Axis.vertical,
//         controller: _pageController,
//         itemCount: videos.length,
//         onPageChanged: (index) {
//           setState(() => currentIndex = index);
//           _initializeVideo(index);
//         },
//         itemBuilder: (context, index) {
//           return Stack(
//             children: [
//               // Video Player
//               Center(
//                 child: _controller != null && _controller!.value.isInitialized
//                     ? SizedBox.expand(
//                         // full screen
//                         child: FittedBox(
//                           fit: BoxFit.cover, // zoom & crop like TikTok
//                           child: SizedBox(
//                             width: _controller!.value.size.width,
//                             height: _controller!.value.size.height,
//                             child: VideoPlayer(_controller!),
//                           ),
//                         ),
//                       )
//                     : const Center(child: CircularProgressIndicator()),
//               ),

//               // Overlay (Like, Comment, Share)
//               const Positioned(
//                 right: 16,
//                 bottom: 100,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Icon(Icons.favorite, color: Colors.red, size: 40),
//                     SizedBox(height: 20),
//                     Icon(Icons.comment, color: Colors.white, size: 40),
//                     SizedBox(height: 20),
//                     Icon(Icons.share, color: Colors.white, size: 40),
//                   ],
//                 ),
//               ),

//               // Bottom info (username + caption + music)
//               Positioned(
//                 left: 16,
//                 bottom: 20,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("@username",
//                         style: TextStyle(color: Colors.white, fontSize: 16)),
//                     Text("This is a TikTok style caption...",
//                         style: TextStyle(color: Colors.white)),
//                     Row(
//                       children: [
//                         Icon(Icons.music_note, color: Colors.white, size: 16),
//                         Text(" Original Sound",
//                             style: TextStyle(color: Colors.white)),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
