import 'package:food_app/theme/app_dimens.dart';
import 'package:flutter/material.dart';

class Font {
  static const urbanist = "Urbanist";
}

class AppTextStyle {
//bold
  static TextStyle h1Bold(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h1,
          fontWeight: FontWeight.bold,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h2Bold(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h2,
          fontWeight: FontWeight.bold,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h3Bold(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h3,
          fontWeight: FontWeight.bold,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h4Bold(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h4,
          fontWeight: FontWeight.bold,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h5Bold(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h5,
          fontWeight: FontWeight.bold,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h6Bold(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h6,
          fontWeight: FontWeight.bold,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h7Bold(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h7,
          fontWeight: FontWeight.bold,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h8Bold(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h8,
          fontWeight: FontWeight.bold,
          color: color,
          fontStyle: fontStyle);

//medium
  static TextStyle h1Medium(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h1,
          fontWeight: FontWeight.w500,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h2Medium(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h2,
          fontWeight: FontWeight.w500,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h3Medium(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h3,
          fontWeight: FontWeight.w500,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h4Medium(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h4,
          fontWeight: FontWeight.w500,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h5Medium(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h5,
          fontWeight: FontWeight.w500,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h6Medium(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h6,
          fontWeight: FontWeight.w500,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h7Medium(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h7,
          fontWeight: FontWeight.w500,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h8Medium(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h8,
          fontWeight: FontWeight.w500,
          color: color,
          fontStyle: fontStyle);

  //regular
  static TextStyle h1Regular(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h1,
          fontWeight: FontWeight.w400,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h2Regular(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h2,
          fontWeight: FontWeight.w400,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h3Regular(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h3,
          fontWeight: FontWeight.w400,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h4Regular(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h4,
          fontWeight: FontWeight.w400,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h5Regular(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h5,
          fontWeight: FontWeight.w400,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h6Regular(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h6,
          fontWeight: FontWeight.w500,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h7Regular(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h7,
          fontWeight: FontWeight.w400,
          color: color,
          fontStyle: fontStyle);

  static TextStyle h8Regular(
          {Color? color,
          FontStyle fontStyle = FontStyle.normal,
          String? fontFamily}) =>
      TextStyle(
          fontFamily: fontFamily,
          fontSize: Dimens.h8,
          fontWeight: FontWeight.w400,
          color: color,
          fontStyle: fontStyle);
}
