import 'package:flutter/material.dart';
import 'package:food_app/models/item_model.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
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

  onIncrement(ItemModel item) {
    // final dashboardController = Get.find<DashboardController>();
    // dashboardController.addItem(item);
    // item.count++;
    // refresh();
  }

  onDecrement(ItemModel item) {
    // final dashboardController = Get.find<DashboardController>();
    // if (item.count <= 0) return;
    // dashboardController.removeItem(item);
    // item.count--;
    // refresh();
  }
}
