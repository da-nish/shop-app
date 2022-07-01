import 'package:food_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppBoxDecoration {
  static BoxDecoration imageCard(
          {Color leftBorder = AppColors.errorColor,
          Color backgound = AppColors.imageCard}) =>
      BoxDecoration(
          gradient: LinearGradient(
              stops: [0.06, 0.02], colors: [leftBorder, backgound]),
          borderRadius: BorderRadius.all(const Radius.circular(4)));

  static BoxDecoration coloredImageCard({Color backgound = AppColors.white}) =>
      BoxDecoration(
          color: backgound,
          borderRadius: BorderRadius.all(const Radius.circular(4)));

  static BoxDecoration borderBottom(
          {Color color = AppColors.textGrey, double width = 1}) =>
      BoxDecoration(
          border:
              Border(bottom: BorderSide(width: width, color: AppColors.dark)));

  static BoxDecoration container(
          {Color containerColor = AppColors.containerColor}) =>
      BoxDecoration(
          color: containerColor, borderRadius: BorderRadius.circular(8));
}
