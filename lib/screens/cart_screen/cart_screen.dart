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

class CartScreen extends GetView<CartController> {
  CartScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("Cart Items", showBackButton: true),
      body: Container(
        padding: const EdgeInsets.symmetric(
            horizontal: Dimens.grid16, vertical: Dimens.grid8),
        child: controller.items.length <= 0
            ? Text("Please add item in the cart")
            : ListView(
                children: [
                  SizedBox(height: Dimens.grid10),
                  // MerchantCard("", colorCard: true),
                  SizedBox(height: Dimens.grid20),
                  Text(
                    "Items",
                    style: AppTextStyle.h4Regular(color: AppColors.white),
                  ),
                  SizedBox(height: Dimens.grid20),
                  Obx(() => Container(
                        decoration: AppBoxDecoration.container(),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.items.length,

                          itemBuilder: (context, index) {
                            return CartItem(
                                controller.items[index], controller);
                          },
                          // children: controller.items
                          //     .map((e) => CartItem(e, controller))
                          //     .toList()),
                        ),
                      )),
                  SizedBox(height: Dimens.grid20),
                  Text(
                    "Order details",
                    style: AppTextStyle.h4Regular(color: AppColors.white),
                  ),
                  SizedBox(height: Dimens.grid20),

                  PlaceOrderCard(controller),
                  SizedBox(height: Dimens.grid20),
                  // SizedBox(
                  //     height: 200,
                  //     child: AnimatedSwitcher(
                  //       transitionBuilder:
                  //           (Widget child, Animation<double> animation) {
                  //         return ScaleTransition(
                  //             scale: animation, child: child);
                  //       },
                  //       duration: const Duration(milliseconds: 1500),
                  //       child: controller.loading.value
                  //           ? TextButton(
                  //               onPressed: () {
                  //                 controller.loading.value =
                  //                     !controller.loading.value;
                  //               },
                  //               child: Text("dflasdkf"),
                  //             )
                  //           : TextButton(
                  //               onPressed: () {
                  //                 controller.loading.value =
                  //                     !controller.loading.value;
                  //               },
                  //               child: Text("1111111111"),
                  //             ),
                  //     )),
                ],
              ),
      ),
    );
  }
}
