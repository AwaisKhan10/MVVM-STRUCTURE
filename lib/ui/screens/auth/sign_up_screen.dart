import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:mvvm/core/constant/auth_field_decoration.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/core/constant/string.dart';
import 'package:mvvm/core/constant/text_style.dart';
import 'package:mvvm/core/enums/view_state.dart';
import 'package:mvvm/ui/custom_widget/buttons/custom_button.dart';
import 'package:mvvm/ui/screens/auth/sign_up_view_model.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignupViewModel(),
      child: Consumer<SignupViewModel>(
        builder: (context, model, child) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 45,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Skip",
                          style: style16.copyWith(
                            color: whiteColor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12.h),
                    Image.asset(
                      "$staticAssets/app_logo.png",
                      height: 45.h,
                      width: 120.w,
                    ),
                    SizedBox(height: 45.h),
                    Text(
                      "Create Account",
                      style: style16.copyWith(
                        fontSize: 30.sp,
                        color: whiteColor,
                      ),
                    ),
                    Text(
                      "Signup to Get Started",
                      style: style16.copyWith(
                        fontSize: 20.sp,
                        color: greyColor,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    SizedBox(height: 45.h),

                    TextFormField(
                      style: style16,
                      onChanged: (value) {
                        model.appUser.name = value;
                      },
                      decoration: authFieldDecoration.copyWith(
                          labelText: "Name",
                          suffixIcon: Image.asset(
                            "$iconsAssets/tick-circle.png",
                            scale: 4,
                          ),
                          prefixIcon: Image.asset(
                            "$iconsAssets/email.png",
                            scale: 4,
                          )),
                    ),

                    ///
                    /// Text fields
                    TextFormField(
                      style: style16,
                      onChanged: (value) {
                        model.appUser.email = value;
                      },
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
                      onChanged: (value) {
                        model.appUser.password = value;
                      },
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
                    SizedBox(height: 40.h),

                    ///
                    /// Register button
                    ///
                    model.state == ViewState.busy
                        ? Center(child: CircularProgressIndicator())
                        : CustomButton(
                            text: 'Create Account',
                            onTap: () {
                              model.register();
                            },
                            textColor: Colors.white,
                          ),
                    SizedBox(height: 24.h),

                    SizedBox(height: 25.h),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
