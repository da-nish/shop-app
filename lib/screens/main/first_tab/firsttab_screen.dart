import 'package:food_app/screens/main/first_tab/firsttab_controller.dart';
import 'package:food_app/screens/main/first_tab/widget/first_tab_tem.dart';
import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_decoration.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:food_app/widgets/appbar/secondry_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstTabScreen extends StatelessWidget {
  FirstTabScreen();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<FirstTabController>();
    controller.init();
    return Scaffold(
      appBar: CustomAppBar("First tab"),
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.grid16, vertical: Dimens.grid8),
        child: ListView(
          children: [
            SizedBox(height: Dimens.grid10),
            // MerchantCard("", colorCard: true),
            SizedBox(height: Dimens.grid20),
            Text(
              "Items",
              style: AppTextStyle.h4Regular(color: AppColors.white),
            ),
            SizedBox(height: Dimens.grid20),
            Container(
              decoration: AppBoxDecoration.container(),
              child: Column(
                  children: controller.items
                      .map((e) => FirstTabItem(e, controller))
                      .toList()),
            ),
            SizedBox(height: Dimens.grid20),
          ],
        ),
      ),
    );
  }
}
