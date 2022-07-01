import 'package:food_app/models/category_spend_model.dart';
import 'package:food_app/models/enums.dart';

class AppData {
  int totalSpend = 0;
  Map<CategoryType, int> categorySpend = {
    CategoryType.Food: 0,
    CategoryType.Shopping: 0,
    CategoryType.Entertainment: 0,
  };
  List<CategorySpendModel> _transactions = [];

  List<CategorySpendModel> recentTransactions() {
    List<CategorySpendModel> recentList = [];
    int i = 0;
    for (CategorySpendModel item in _transactions) {
      recentList.add(item);
      if (i++ >= 5) return recentList;
    }
    return recentList;
  }

  void addTransaction(CategorySpendModel newTransaction) {
    _transactions.add(newTransaction);
    if (newTransaction.paymentStatus) {
      totalSpend += newTransaction.amount;
      categorySpend[newTransaction.type] =
          (categorySpend[newTransaction.type]! + newTransaction.amount);
    }
  }

  List<CategorySpendModel> getCategory(CategoryType type) {
    return _transactions.where((element) => (element.type == type)).toList();
  }
}
