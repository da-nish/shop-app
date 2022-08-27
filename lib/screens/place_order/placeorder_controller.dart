import 'package:food_app/models/cart_item_model.dart';
import 'package:food_app/screens/home/home_controller.dart';
import 'package:get/get.dart';

class PlaceOrderController extends GetxController {
  RxList<CartItemModel> items = List<CartItemModel>.from([]).obs;
  @override
  onInit() {
    super.onInit();
    items.clear();
    items.value = [...Get.find<HomeController>().selectedItems];
    refresh();
  }
}
