import 'package:food_app/screens/main/dashboard/dashboard_controller.dart';
import 'package:food_app/screens/main/first_tab/firsttab_controller.dart';
import 'package:food_app/screens/main/second_tab/secondtab_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FirstTabController(), permanent: true);
    Get.put(SecondTabController());
    Get.put(DashboardController(), permanent: true);
  }
}
