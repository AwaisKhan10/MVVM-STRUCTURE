import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/core/constant/string.dart';
import 'package:mvvm/core/constant/text_style.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),

      ///
      /// Start Body
      ///
      body: Padding(
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
              "Create Account",
              style: style30,
            ),
            50.verticalSpace,
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
