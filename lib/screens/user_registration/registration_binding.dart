import 'package:food_app/screens/user_registration/registration_controller.dart';
import 'package:get/get.dart';

class RegistrationBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(RegistrationController());
  }
}
