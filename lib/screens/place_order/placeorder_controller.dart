import 'package:flutter/material.dart';
import 'package:food_app/models/item_model.dart';
import 'package:get/get.dart';

class PlaceOrderController extends GetxController {
  RxList<ItemModel> items = List<ItemModel>.from([]).obs;

  init() {
    items.clear();
    // final data = Get.find<AppData>();
    items.add(
        ItemModel('1', 'Chicken pot pie', Colors.red, '', 10, 'description'));
    items.add(
        ItemModel('2', 'Mashed potatoes', Colors.red, '', 10, 'description'));
    items.add(
        ItemModel('3', 'Fried chicken', Colors.red, '', 10, 'description'));
    items.add(ItemModel('3', 'Burgers', Colors.red, '', 10, 'description'));

    refresh();
  }
}
