import 'package:flutter/material.dart';
import 'package:food_app/models/item_model.dart';
import 'package:food_app/screens/main/dashboard/dashboard_controller.dart';
import 'package:get/get.dart';

class SecondTabController extends GetxController {
  RxList<ItemModel> items = List<ItemModel>.from([]).obs;

  init() {
    items.clear();
    items.add(ItemModel('8', 'Apple', Colors.red, '', 20, 'description'));
    items.add(ItemModel('9', 'Mango', Colors.red, '', 20, 'description'));
    items.add(ItemModel('10', 'Orange', Colors.red, '', 20, 'description'));
    items.add(ItemModel('11', 'Banana', Colors.red, '', 20, 'description'));
    items.add(ItemModel('12', 'Strawbarry', Colors.red, '', 20, 'description'));
    items
        .add(ItemModel('13', 'Blueberries', Colors.red, '', 20, 'description'));
    items.add(ItemModel('14', 'Grapes', Colors.red, '', 20, 'description'));
    refresh();
  }

  onIncrement(ItemModel item) {
    final dashboardController = Get.find<DashboardController>();
    dashboardController.addItem(item);
    item.count++;
    refresh();
  }

  onDecrement(ItemModel item) {
    final dashboardController = Get.find<DashboardController>();
    if (item.count <= 0) return;
    dashboardController.removeItem(item);
    item.count--;
    refresh();
  }
}
