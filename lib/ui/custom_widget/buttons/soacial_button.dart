import 'package:flutter/material.dart';
import 'package:mvvm/core/constant/colors.dart';

class SocailButton extends StatelessWidget {
  VoidCallback? onTap;
  Icon? icon;
  SocailButton({required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: whiteColor,
        child: icon,
      ),
    );
  }
}
