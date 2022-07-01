import 'package:food_app/screens/main/second_tab/secondtab_controller.dart';
import 'package:get/get.dart';

class SecondTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SecondTabController());
  }
}
