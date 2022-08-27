import 'package:food_app/models/user_model.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  final User userInfo = User();
  RxBool signupComplete = false.obs;

  bool validateName(String value) {
    String pattern = r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-]';
    RegExp regex = RegExp(pattern);
    if (value.isEmpty) return false;
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (value.isEmpty) return false;
    return (!regex.hasMatch(value)) ? false : true;
  }

  bool validatePhone(String value) {
    String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regex = RegExp(pattern);
    if (value.isEmpty) return false;
    return (!regex.hasMatch(value)) ? false : true;
  }
}
