import 'package:flutter/material.dart';
import 'package:food_app/screens/cart_screen/cart_controller.dart';
import 'package:food_app/theme/app_decoration.dart';
import 'package:food_app/utils/double_extension.dart';
import 'package:food_app/utils/string_extension.dart';
import 'package:get/get.dart';

class PlaceOrderCard extends StatelessWidget {
  final CartController controller;
  const PlaceOrderCard(this.controller, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 80,
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        decoration: AppBoxDecoration.container(),
        child: Obx(
          () => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total item"),
                  Text(controller.totalQuantity.toString()),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total price"),
                  Text(controller.totalPrice.withDigits(2).rupee()),
                ],
              ),
              const SizedBox(height: 16),
              if (controller.totalQuantity > 0)
                Align(
                    alignment: Alignment.centerRight,
                    child: OutlinedButton(
                        onPressed: () => controller.redirectToPayment(),
                        child: Text("Place Order")))
            ],
          ),
        ));
  }
}
