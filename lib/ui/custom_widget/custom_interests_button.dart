import 'package:flutter/material.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/core/constant/text_style.dart';

class CustomInterestButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isSelected;
  final int? index;

  const CustomInterestButton({
    required this.text,
    required this.onTap,
    required this.isSelected,
    this.index,
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
        constraints: const BoxConstraints(minWidth: 0), // 👈 shrink possible
        child: isSelected
            ? Row(
                mainAxisSize: MainAxisSize.min, // 👈 wrap content
                children: [
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: lightGreenColor,
                    child: Text(
                      index != null ? "${index! + 1}" : "",
                      style: style16.copyWith(fontSize: 12),
                    ),
                  ),
                  const SizedBox(width: 6),
                  Text(
                    text,
                    style: style16.copyWith(
                      color: isSelected ? lightGreenColor : whiteColor,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const CircleAvatar(
                    radius: 14,
                    backgroundColor: greyColor,
                    child: Icon(
                      Icons.remove,
                      color: Colors.black,
                      size: 16,
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisSize: MainAxisSize.min, // 👈 wrap content
                children: [
                  Text(
                    text,
                    style: style16.copyWith(
                      color: isSelected ? lightGreenColor : whiteColor,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
