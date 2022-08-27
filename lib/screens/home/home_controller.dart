import 'package:flutter/material.dart';
import 'package:food_app/models/cart_item_model.dart';
import 'package:food_app/models/item_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<ItemModel> items = List<ItemModel>.from([]).obs;
  RxList<CartItemModel> selectedItems = List<CartItemModel>.from([]).obs;

  @override
  onInit() {
    super.onInit();
    items.clear();
    items.add(ItemModel('8', 'Apple', Colors.red, '', 20, 'description'));
    items.add(ItemModel('9', 'Mango', Colors.red, '', 20, 'description'));
    items.add(ItemModel('10', 'Orange', Colors.red, '', 20, 'description'));
    items.add(ItemModel('11', 'Banana', Colors.red, '', 20, 'description'));
    items.add(ItemModel('12', 'Strawbarry', Colors.red, '', 20, 'description'));
    items
        .add(ItemModel('13', 'Blueberries', Colors.red, '', 20, 'description'));
    items.add(ItemModel('14', 'Grapes', Colors.red, '', 20, 'description'));

    items.add(ItemModel('15', 'Apple', Colors.red, '', 20, 'description'));
    items.add(ItemModel('16', 'Mango', Colors.red, '', 20, 'description'));
    items.add(ItemModel('17', 'Orange', Colors.red, '', 20, 'description'));
    items.add(ItemModel('18', 'Banana', Colors.red, '', 20, 'description'));
    items.add(ItemModel('19', 'Strawbarry', Colors.red, '', 20, 'description'));
    // refresh();
  }

  RxInt _totalQuantity = 0.obs;
  int get totalQuantity => _totalQuantity.value;
  int get totalItems => _totalQuantity.value;

  //   RxDouble _totalPrice = 0.0.obs;
  // double get totalPrice => _totalPrice.value;

  RxInt _cartSize = 0.obs;
  int get cartSize => _cartSize.value;
  // set cartSize(int value) {
  //   _cartSize.value = value;
  // }

  void remove(ItemModel item) {
    selectedItems.removeWhere((element) => element.itemId == item.id);
    print("length: ${selectedItems.length}");
    _cartSize.value = selectedItems.length;
    refresh();
  }

  void add(ItemModel item) {
    CartItemModel newItem =
        CartItemModel(count: 1, itemId: item.id, item: item);
    selectedItems.add(newItem);
    _cartSize.value = selectedItems.length;

    // price();
  }
}
