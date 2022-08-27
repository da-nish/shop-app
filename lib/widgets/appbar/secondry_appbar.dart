import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showBackButton;
  final String title;

  CustomAppBar(this.title, {this.showBackButton = false});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.grid20, vertical: Dimens.grid12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            if (showBackButton)
              IconButton(
                  onPressed: () => Get.back(),
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.white,
                  )),
            Expanded(
                child: Text(
              title,
              style: AppTextStyle.h2Bold(),
            )),
            Stack(alignment: Alignment.bottomRight, children: [
              Icon(
                Icons.shopping_cart,
                size: 34,
              ),
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: AppColors.containerColorWhite,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    "2",
                    style: AppTextStyle.h6Regular(color: AppColors.black),
                  ),
                ),
              )
            ])
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
