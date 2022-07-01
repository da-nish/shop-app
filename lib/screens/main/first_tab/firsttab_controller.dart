import 'package:food_app/models/category_model.dart';
import 'package:food_app/models/category_spend_model.dart';
import 'package:food_app/models/enums.dart';
import 'package:get/get.dart';

class FirstTabController extends GetxController {
  List<CategorySpendModel> transactionList = [];
  List<CategoryModel> categories = [];
  int totalFood = 0;
  int totalShopping = 0;
  int totalEntertainment = 0;

  init() {
    // final data = Get.find<AppData>();
  }

  String getTitle(CategoryType type) {
    switch (type) {
      case CategoryType.Food:
        return "Food";
      case CategoryType.Shopping:
        return "Shopping";
      case CategoryType.Entertainment:
        return "Entertainment";
      default:
        return "";
    }
  }

  int getSpend(CategoryType type) {
    switch (type) {
      case CategoryType.Food:
        return totalFood;
      case CategoryType.Shopping:
        return totalShopping;
      case CategoryType.Entertainment:
        return totalEntertainment;
      default:
        return 0;
    }
  }
}
