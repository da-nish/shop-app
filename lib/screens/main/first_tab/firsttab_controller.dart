import 'package:flutter/material.dart';
import 'package:food_app/models/item_model.dart';
import 'package:food_app/screens/main/dashboard/dashboard_controller.dart';
import 'package:get/get.dart';

class FirstTabController extends GetxController {
  RxList<ItemModel> items = List<ItemModel>.from([]).obs;

  init() {
    items.clear();
    // final data = Get.find<AppData>();
    items.add(ItemModel('1', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('2', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('3', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('3', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('4', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('5', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('6', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('101', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('102', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('103', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('104', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('105', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('106', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('107', 'name', Colors.red, '', 10, 'description'));
    items.add(ItemModel('108', 'name', Colors.red, '', 10, 'description'));
    refresh();
  }

  onIncrement(ItemModel item) {
    final dashboardController = Get.find<DashboardController>();
    dashboardController.addItem(item);
    // item

    item.count++;
    // for (CartItemModel e in selectedItems) {
    //   if (e.itemId == item.id) {
    //     e.count++;
    //     return;
    //   }
    // }
    // CartItemModel newItem =
    //     CartItemModel(count: 1, itemId: item.id, item: item);
    // selectedItems.add(newItem);
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
