import 'package:food_app/routes/get_pages.dart';
import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  HomeAppBar(this.title);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.grid20, vertical: Dimens.grid12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Text(
              title,
              style: AppTextStyle.h2Bold(),
            )),
            GestureDetector(
              onTap: () {
                Get.toNamed<dynamic>(GetPages.cartScreen);
              },
              child: Stack(alignment: Alignment.bottomRight, children: [
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
              ]),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
