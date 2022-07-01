import 'package:food_app/models/cart_item_model.dart';
import 'package:food_app/models/item_model.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  RxList<CartItemModel> _selectedItems = List<CartItemModel>.from([]).obs;
  RxDouble _totalPrice = 0.0.obs;
  RxInt _totalQuantity = 0.obs;
  int get totalQuantity => _totalQuantity.value;
  int get totalItems => _selectedItems.length;
  double get totalPrice => _totalPrice.value;

  double price() {
    double totalPrice = 0;
    int quantity = 0;
    for (CartItemModel item in _selectedItems) {
      totalPrice += (item.count * item.item.price);
      quantity += item.count;
    }
    _totalQuantity.value = quantity;
    _totalPrice.value = totalPrice;
    refresh();
    return totalPrice;
  }

  bool hasItem() {
    return _selectedItems.isNotEmpty;
  }

  void addItem(ItemModel item) {
    if (item.count != 0) {
      updateItem(item, item.count + 1);
      return;
    }
    CartItemModel newItem =
        CartItemModel(count: 1, itemId: item.id, item: item);
    _selectedItems.add(newItem);
    price();
  }

  void updateItem(ItemModel item, int count) {
    for (CartItemModel e in _selectedItems) {
      if (e.itemId == item.id) {
        e.count = count;
        break;
      }
    }
    price();
  }

  void removeItem(ItemModel item) {
    if (item.count == 1) {
      _selectedItems.removeWhere((element) => element.itemId == item.id);
      price();
    } else if (item.count > 1) {
      updateItem(item, item.count - 1);
    }
    print("length: ${_selectedItems.length}");
  }

  void removeAll() {
    _selectedItems.clear();
    refresh();
  }
}
