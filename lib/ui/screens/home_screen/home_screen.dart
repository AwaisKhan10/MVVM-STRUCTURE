// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/core/constant/string.dart';
import 'package:mvvm/core/constant/text_style.dart';
import 'package:mvvm/ui/screens/home_screen/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:video_player/video_player.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<SliderDrawerState> _drawerKey =
      GlobalKey<SliderDrawerState>();

  @override
  Widget build(BuildContext context) {
    return SliderDrawer(
      slideDirection: SlideDirection.rightToLeft,
      appBar: AppBar(),
      key: _drawerKey,

      slider: Scaffold(
        backgroundColor: Colors.black,
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage("$staticAssets/obaording1.png"),
            ),
            Text(
              "Selena Grande",
              style: style24,
            ),
            Text(
              "selenagrande@mail.com",
              style: style24.copyWith(color: greyColor),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.person,
                  color: greyColor,
                ),
              ),
              title: Text(
                "My Profile",
                style: style16,
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),

      // 👇 yeh main TikTok screen
      child: ChangeNotifierProvider(
        create: (BuildContext context) => HomeViewModel(),
        child: Consumer<HomeViewModel>(
          builder: (context, model, child) => Scaffold(
            body: Stack(
              children: [
                // Background dummy container (aap video lagao yahan)
                Positioned.fill(child: VideoPlayer(model.videoController!)),

                // Header (Logo + Search + Profile Button)
                Positioned(
                  top: 40,
                  left: 16,
                  right: 16,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "$staticAssets/app_logo.png",
                        height: 40,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child:
                                const Icon(Icons.search, color: Colors.white),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: () {
                              // ✅ Open/close drawer
                              _drawerKey.currentState?.toggle();
                            },
                            child: Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.black45,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child:
                                  const Icon(Icons.person, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
