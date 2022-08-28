import 'package:food_app/models/cart_item_model.dart';
import 'package:food_app/models/item_model.dart';
import 'package:food_app/routes/get_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList<ItemModel> items = List<ItemModel>.from([]).obs;
  RxList<CartItemModel> selectedItems = List<CartItemModel>.from([]).obs;

  @override
  onInit() {
    super.onInit();
    items.clear();
    items.add(ItemModel('8', 'Jeans', '', 1000, 'description'));
    items.add(ItemModel('9', 'Pant', '', 800, 'description'));
    items.add(ItemModel('10', 'Shirt', '', 500, 'description'));
    items.add(ItemModel('11', 'Sweater', '', 500, 'description'));
    items.add(ItemModel('12', 'Belt', '', 500, 'description'));
    items.add(ItemModel('13', 'Blazer', '', 2000, 'description'));
    items.add(ItemModel('14', 'Cap', '', 200, 'description'));

    items.add(ItemModel('15', 'Cargo pants', '', 800, 'description'));
    items.add(ItemModel('16', 'Gloves', '', 200, 'description'));
    items.add(ItemModel('17', 'Hat', '', 200, 'description'));
    items.add(ItemModel('18', 'Jacket', '', 1000, 'description'));
    items.add(ItemModel('19', 'Pajamas', '', 500, 'description'));
    items.add(ItemModel('20', 'Polo shirt', '', 600, 'description'));
    items.add(ItemModel('21', 'Shorts', '', 400, 'description'));
    items.add(ItemModel('22', 'Socks', '', 100, 'description'));
    items.add(ItemModel('23', 'T-shirt', '', 500, 'description'));
    items.add(ItemModel('24', 'Tie', '', 200, 'description'));
  }

  RxInt _totalQuantity = 0.obs;
  int get totalQuantity => _totalQuantity.value;

  RxInt _cartSize = 0.obs;
  int get cartSize => _cartSize.value;

  void remove(ItemModel item) {
    selectedItems.removeWhere((element) => element.itemId == item.id);
    _cartSize.value = selectedItems.length;
    refresh();
  }

  void add(ItemModel item) {
    int index =
        selectedItems.indexWhere((element) => element.item.id == item.id);
    if (index != -1) return;
    CartItemModel newItem =
        CartItemModel(count: 1, itemId: item.id, item: item);
    selectedItems.add(newItem);
    _cartSize.value = selectedItems.length;
  }

  void redirectToCart() => Get.toNamed<dynamic>(GetPages.cartScreen);
}
