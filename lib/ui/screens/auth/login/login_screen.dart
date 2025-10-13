// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:mvvm/core/constant/auth_field_decoration.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/core/constant/string.dart';
import 'package:mvvm/core/constant/text_style.dart';
import 'package:mvvm/ui/custom_widget/buttons/custom_button.dart';
import 'package:mvvm/ui/custom_widget/buttons/soacial_button.dart';
import 'package:mvvm/ui/screens/auth/login/login_view_model.dart';
import 'package:mvvm/ui/screens/home_screen/home_screen.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LoginViewModel(),
      child: Consumer<LoginViewModel>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
          ),

          ///
          /// Start Body
          ///
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    "$staticAssets/app_logo.png",
                    scale: 6,
                  ),
                  30.verticalSpace,
                  Text(
                    "Welcome Back",
                    style: style30,
                  ),

                  50.verticalSpace,
                  TextFormField(
                    style: style16,
                    decoration: authFieldDecoration.copyWith(
                        labelText: "Full Name",
                        suffixIcon: Image.asset(
                          "$iconsAssets/tick-circle.png",
                          scale: 4,
                        ),
                        prefixIcon: Image.asset(
                          "$iconsAssets/user.png",
                          scale: 4,
                        )),
                  ),
                  30.verticalSpace,

                  ///
                  /// Email
                  ///
                  TextFormField(
                    style: style16,
                    decoration: authFieldDecoration.copyWith(
                        labelText: "Email",
                        suffixIcon: Image.asset(
                          "$iconsAssets/tick-circle.png",
                          scale: 4,
                        ),
                        prefixIcon: Image.asset(
                          "$iconsAssets/email.png",
                          scale: 4,
                        )),
                  ),
                  30.verticalSpace,

                  ///
                  /// Password
                  ///
                  TextFormField(
                    style: style16,
                    obscureText: model.isSelect,
                    decoration: authFieldDecoration.copyWith(
                        labelText: "Password",
                        suffixIcon: GestureDetector(
                          onTap: () {
                            model.onClick();
                          },
                          child: Icon(
                            model.isSelect
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: greyColor,
                          ),
                        ),
                        prefixIcon: Image.asset(
                          "$iconsAssets/email.png",
                          scale: 4,
                        )),
                  ),
                  30.verticalSpace,

                  ///
                  /// Custom Button
                  ///
                  CustomButton(
                    text: "Create New Account",
                    onTap: () {
                      Get.offAll(MyHomePage());
                    },
                    boxColor: Colors.black,
                    textColor: greenColor,
                  ),
                  30.verticalSpace,

                  ///
                  /// Social Button
                  ///
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SocailButton(
                        onTap: () {},
                        icon: Icon(Icons.apple),
                      ),
                      20.horizontalSpace,
                      SocailButton(
                        onTap: () {},
                        icon: Icon(Icons.facebook),
                      ),
                      20.horizontalSpace,
                      SocailButton(
                        onTap: () {},
                        icon: Icon(Icons.linked_camera_outlined),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
