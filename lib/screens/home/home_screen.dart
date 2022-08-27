import 'package:food_app/routes/get_pages.dart';
import 'package:food_app/screens/home/home_controller.dart';
import 'package:food_app/screens/home/widget/product_Item.dart';
import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_decoration.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:food_app/widgets/appbar/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar("Home", actions: [
        GestureDetector(
          onTap: () {
            Get.toNamed<dynamic>(GetPages.cartScreen);
          },
          child: Stack(alignment: Alignment.bottomRight, children: [
            Icon(
              Icons.shopping_cart,
              size: 34,
            ),
            Obx(
              () => controller.cartSize <= 0
                  ? Container()
                  : Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: AppColors.containerColorWhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          controller.cartSize.toString(),
                          style: AppTextStyle.h6Regular(color: AppColors.black),
                        ),
                      ),
                    ),
            )
          ]),
        )
      ]),
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.grid16, vertical: Dimens.grid8),
        child: ListView(
          children: [
            SizedBox(height: Dimens.grid10),
            Text(
              "Items",
              style: AppTextStyle.h4Regular(color: AppColors.white),
            ),
            SizedBox(height: Dimens.grid20),
            Container(
              decoration: AppBoxDecoration.container(),
              child: Column(
                  children: controller.items
                      .map((e) => HomeProductItem(e, controller))
                      .toList()),
            ),
            SizedBox(height: Dimens.grid60),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Obx(
        () => controller.cartSize > 0
            ? Container(
                // color: Color.fromARGB(114, 255, 193, 7),
                margin: EdgeInsets.only(bottom: 0, right: 18, left: 18),
                height: 48,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(Dimens.grid8)),
                  color: Color.fromARGB(255, 61, 142, 197),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Text("Items: " + controller.totalItems.toString()),
                        Text("Items: " + controller.cartSize.toString()),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed<dynamic>(GetPages.cartScreen);
                      },
                      child: Text(
                        "Goto Cart",
                        // controller.totalPrice.withDigits(2).rupee(),
                        style: AppTextStyle.h3Bold(),
                      ),
                    )
                  ],
                ),
              )
            : Container(),
      ),
    );
  }
}
