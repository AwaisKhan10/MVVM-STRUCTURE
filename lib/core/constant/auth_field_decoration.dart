import 'package:flutter/material.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/core/constant/text_style.dart';

final authFieldDecoration = InputDecoration(
    labelText: "Email",
    labelStyle: style16.copyWith(color: Color(0xff737B80)),
    border: const UnderlineInputBorder(
      borderSide: BorderSide(width: 1, color: whiteColor),
    ),
    errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: whiteColor, width: 1)),
    enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: whiteColor, width: 1)),
    disabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: whiteColor, width: 1)),
    focusedErrorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: whiteColor, width: 1)),
    focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: whiteColor, width: 1)));
