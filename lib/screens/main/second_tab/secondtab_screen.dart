import 'package:food_app/screens/main/first_tab/widget/first_tab_tem.dart';
import 'package:food_app/screens/main/second_tab/secondtab_controller.dart';
import 'package:food_app/screens/main/second_tab/widget/second_tab_Item.dart';
import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_decoration.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:food_app/widgets/appbar/secondry_appbar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/merchant_card/merchant_card.dart';
import 'package:get/get.dart';

class SecondTabScreen extends StatelessWidget {
  SecondTabScreen();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SecondTabController>();
    controller.init();
    return Scaffold(
      appBar: CustomAppBar("Second Tab"),
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
                      .map((e) => SecondTabItem(e, controller))
                      .toList()),
            ),
            SizedBox(height: Dimens.grid20),
          ],
        ),
      ),
    );
  }
}
