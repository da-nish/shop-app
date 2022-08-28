import 'package:food_app/models/cart_item_model.dart';
import 'package:food_app/models/item_model.dart';
import 'package:food_app/screens/home/home_controller.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<CartItemModel> items = List<CartItemModel>.from([]).obs;
  RxDouble _totalPrice = 0.0.obs;
  RxInt _totalQuantity = 0.obs;

  int get totalQuantity => _totalQuantity.value;
  double get totalPrice => _totalPrice.value;
  String s = "0";
  @override
  onInit() {
    super.onInit();
    items.value = [...Get.find<HomeController>().selectedItems];
    s = "1";

    _totalPrice.value = 0.0;
    _totalQuantity.value = 0;
    for (CartItemModel e in items) {
      if (e.item.count > 0) {
        _totalPrice.value += e.item.price * e.item.count;
        _totalQuantity.value += e.item.count;
      }
    }
    calculatePrice();
    refresh();
  }

  void calculatePrice() {
    _totalPrice.value = 0.0;
    _totalQuantity.value = 0;
    for (CartItemModel e in items) {
      if (e.item.count > 0) {
        _totalPrice.value += e.item.price * e.item.count;
        _totalQuantity.value += 1;
      }
    }
  }

  void onIncrement(ItemModel item) {
    updateItem(item, item.count + 1);
    refresh();
  }

  RxBool loading = true.obs;
  void updateItem(ItemModel item, int count) {
    for (CartItemModel e in items) {
      if (e.itemId == item.id) {
        e.item.count = count;
        calculatePrice();

        break;
      }
    }
    // price();
  }

  void onDecrement(ItemModel item) {
    if (item.count >= 1) {
      updateItem(item, item.count - 1);
    }
    refresh();
  }
}
