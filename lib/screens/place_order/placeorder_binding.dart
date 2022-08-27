import 'package:food_app/screens/place_order/placeorder_controller.dart';
import 'package:get/get.dart';

class PlaceOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PlaceOrderController());
  }
}
