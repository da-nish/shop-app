import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_app/models/item_model.dart';
import 'package:food_app/screens/cart_screen/cart_controller.dart';
import 'package:food_app/screens/home/home_controller.dart';
import 'package:get/get.dart';

void main() {
  test('Cart test', () {
    WidgetsFlutterBinding.ensureInitialized();
    Get.put<HomeController>(HomeController());
    final home = Get.find<HomeController>();

    // Adding Item 9 and 10 in the cart with qualtity 1 and 1
    home.add(ItemModel.testData("9"));
    home.add(ItemModel.testData("10"));
    // home.add(ItemModel.testData("11"));

    final cart = CartController();
    cart.onInit();

    // Expecting 2 items in the card
    expect(cart.totalQuantity, 2);

    // Decrement item:9 quantity
    cart.onDecrement(ItemModel.testData("9"));

    // Expecting 1 item in the card
    expect(cart.totalQuantity, 1);

    // Increment item:9 quantity
    cart.onIncrement(ItemModel.testData("9"));

    // Expecting 2 items in the card
    expect(cart.totalQuantity, 2);

    // Increment item:11 which doesnt exist in the cart
    cart.onIncrement(ItemModel.testData("11"));

    //Expecting no-change
    expect(cart.totalQuantity, 2);
  });
}
