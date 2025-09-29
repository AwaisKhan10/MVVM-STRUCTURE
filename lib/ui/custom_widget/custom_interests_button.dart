import 'package:flutter/material.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/core/constant/text_style.dart';

class CustomInterestButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isSelected;

  const CustomInterestButton({
    required this.text,
    required this.onTap,
    required this.isSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(6),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
        decoration: BoxDecoration(
          color: lightBlack,
          border: Border.all(
            width: 1,
            color: isSelected ? Colors.green : greyColor,
          ),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Text(
          text,
          style: style16.copyWith(
            color: isSelected ? lightGreenColor : whiteColor,
          ),
        ),
      ),
    );
  }
}
