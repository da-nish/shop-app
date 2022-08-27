// import 'package:flutter/material.dart';
// import 'package:food_app/models/item_model.dart';
// import 'package:get/get.dart';

// class FirstTabController extends GetxController {
//   RxList<ItemModel> items = List<ItemModel>.from([]).obs;

//   init() {
//     items.clear();
//     // final data = Get.find<AppData>();
//     items.add(
//         ItemModel('1', 'Chicken pot pie', Colors.red, '', 10, 'description'));
//     items.add(
//         ItemModel('2', 'Mashed potatoes', Colors.red, '', 10, 'description'));
//     items.add(
//         ItemModel('3', 'Fried chicken', Colors.red, '', 10, 'description'));
//     items.add(ItemModel('3', 'Burgers', Colors.red, '', 10, 'description'));
//     items
//         .add(ItemModel('4', 'Chicken soup', Colors.red, '', 10, 'description'));
//     items.add(ItemModel('5', 'Meatloaf', Colors.red, '', 10, 'description'));
//     items.add(ItemModel('6', 'Lasagna', Colors.red, '', 10, 'description'));
//     items.add(ItemModel('101', 'meatballs', Colors.red, '', 10, 'description'));
//     items.add(
//         ItemModel('102', 'Chicken burger', Colors.red, '', 10, 'description'));
//     items.add(ItemModel(
//         '103', 'Chicken parmesan', Colors.red, '', 10, 'description'));
//     items.add(
//         ItemModel('104', 'Chicken Pesto', Colors.red, '', 10, 'description'));
//     items.add(
//         ItemModel('105', 'Burger Sliders', Colors.red, '', 10, 'description'));
//     items.add(ItemModel('106', 'Biryani', Colors.red, '', 10, 'description'));
//     items.add(
//         ItemModel('107', 'Breadsticks', Colors.red, '', 10, 'description'));
//     items.add(ItemModel('108', 'Salad', Colors.red, '', 10, 'description'));
//     refresh();
//   }

//   onIncrement(ItemModel item) {
//     final dashboardController = Get.find<DashboardController>();
//     dashboardController.addItem(item);
//     item.count++;
//     refresh();
//   }

//   onDecrement(ItemModel item) {
//     final dashboardController = Get.find<DashboardController>();
//     if (item.count <= 0) return;
//     dashboardController.removeItem(item);
//     item.count--;
//     refresh();
//   }
// }
