import 'package:flutter/material.dart';
import 'package:mvvm/core/constant/colors.dart';
import 'package:mvvm/core/constant/text_style.dart';

final authFieldDecoration = InputDecoration(
    labelText: "Email",
    labelStyle: style16.copyWith(color: const Color(0xff737B80)),
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

final searchFieldDecoration = InputDecoration(
  fillColor: const Color(0xff23262C),
  filled: true,
  hintText: "",
  hintStyle: style16.copyWith(color: const Color(0xff737B80)),
  border: const OutlineInputBorder(
    borderSide: BorderSide(
      width: 1,
      color: Color(0xff23262C),
    ),
  ),
  errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xff23262C), width: 1),
      borderRadius: BorderRadius.circular(10)),
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xff23262C), width: 1),
      borderRadius: BorderRadius.circular(10)),
  disabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xff23262C), width: 1),
      borderRadius: BorderRadius.circular(10)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xff23262C), width: 1),
      borderRadius: BorderRadius.circular(10)),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xff23262C), width: 1),
      borderRadius: BorderRadius.circular(10)),
);
