import 'package:food_app/models/cart_item_model.dart';
import 'package:food_app/models/item_model.dart';
import 'package:food_app/screens/home/home_controller.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
  RxList<CartItemModel> items = List<CartItemModel>.from([]).obs;
  @override
  onInit() {
    super.onInit();
    items.value = [...Get.find<HomeController>().selectedItems];
    refresh();
  }

  void onIncrement(ItemModel item) {
    updateItem(item, item.count + 1);

    refresh();
  }

  void updateItem(ItemModel item, int count) {
    for (CartItemModel e in items) {
      if (e.itemId == item.id) {
        e.item.count = count;
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
