import 'package:flutter/material.dart';

class selectBox extends StatelessWidget {
  VoidCallback? onTap;
  Color? color;
  selectBox({
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: color,
        width: 100,
        height: 100,
      ),
    );
  }
}
