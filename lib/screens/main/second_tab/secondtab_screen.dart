import 'package:food_app/screens/main/second_tab/secondtab_controller.dart';
import 'package:food_app/screens/main/second_tab/widget/category_record.dart';
import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_decoration.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:food_app/widgets/appbar/secondry_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondTabScreen extends StatelessWidget {
  SecondTabScreen();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SecondTabController>();
    controller.init();
    return Scaffold(
      appBar: CustomAppBar("Planning"),
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.grid16, vertical: Dimens.grid8),
        child: ListView(
          children: [
            SizedBox(height: Dimens.grid10),
            // MerchantCard("", colorCard: true),
            SizedBox(height: Dimens.grid20),
            Text(
              "categories",
              style: AppTextStyle.h4Regular(color: AppColors.white),
            ),
            SizedBox(height: Dimens.grid20),
            Container(
              decoration: AppBoxDecoration.container(),
              child: Column(
                  children: controller.categories
                      .map((e) => CategoryRow(e, controller))
                      .toList()),
            ),
            SizedBox(height: Dimens.grid20),
          ],
        ),
      ),
    );
  }
}
