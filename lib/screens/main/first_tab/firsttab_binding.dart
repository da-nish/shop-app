import 'package:food_app/screens/main/first_tab/firsttab_controller.dart';

import 'package:get/get.dart';

class FirstTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FirstTabController());
  }
}
