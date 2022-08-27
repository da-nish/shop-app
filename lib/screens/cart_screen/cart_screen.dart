import 'package:food_app/screens/cart_screen/cart_controller.dart';
import 'package:food_app/screens/cart_screen/widget/cart_tab_tem.dart';
import 'package:food_app/screens/cart_screen/widget/place_order.dart';
import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_decoration.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:food_app/widgets/appbar/secondry_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartScreen extends StatelessWidget {
  CartScreen();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CartController>();
    controller.init();
    return Scaffold(
      appBar: CustomAppBar("Cart Items", showBackButton: true),
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
                      .map((e) => CartItem(e, controller))
                      .toList()),
            ),
            SizedBox(height: Dimens.grid20),
            Text(
              "Order details",
              style: AppTextStyle.h4Regular(color: AppColors.white),
            ),
            SizedBox(height: Dimens.grid20),

            PlaceOrderCard(),
            SizedBox(height: Dimens.grid20),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: Obx(
      //   () => controller.hasItem()
      //       ? Container(
      //           // color: Color.fromARGB(114, 255, 193, 7),
      //           margin: EdgeInsets.only(bottom: 40, right: 18, left: 18),
      //           height: 60,
      //           padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      //           decoration: BoxDecoration(
      //             borderRadius: BorderRadius.all(Radius.circular(Dimens.grid8)),
      //             color: Color.fromARGB(255, 61, 142, 197),
      //           ),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: [
      //                   Text("Items: " + controller.totalItems.toString()),
      //                   Text(
      //                       "Quantity: " + controller.totalQuantity.toString()),
      //                 ],
      //               ),
      //               Text(
      //                 controller.totalPrice.withDigits(2).rupee(),
      //                 style: AppTextStyle.h3Bold(),
      //               )
      //             ],
      //           ),
      //         )
      //       : Container(),
      // ),
    );
  }
}
