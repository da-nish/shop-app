import 'package:food_app/models/enums.dart';

class CategorySpendModel {
  final CategoryType type;
  final DateTime date;
  final int amount;
  final String marchent;
  final String paidVia;
  final String image;
  final bool paymentStatus;

  CategorySpendModel(this.type, this.date, this.amount, this.marchent,
      this.paidVia, this.image,
      {this.paymentStatus = true});
}
