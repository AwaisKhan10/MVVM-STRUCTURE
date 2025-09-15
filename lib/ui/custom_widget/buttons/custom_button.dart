// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/core/constant/text_style.dart';

class CustomButton extends StatelessWidget {
  VoidCallback? onTap;
  String? text;
  Color? boxColor;
  Color? textColor;
  CustomButton({this.boxColor, this.text, this.textColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: greenColor),
            color: boxColor ?? greenColor,
            borderRadius: BorderRadius.circular(50)),
        child: Text(
          text ?? "Create Account",
          style: style16.copyWith(color: textColor ?? whiteColor),
        ),
      ),
    );
  }
}
