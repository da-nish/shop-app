import 'package:food_app/models/enums.dart';
import 'package:flutter/painting.dart';

class CategoryModel {
  String name;
  Color color;
  String icon;
  final CategoryType type;
  int totalSpend;
  double percentage;

  CategoryModel(this.name, this.color, this.icon, this.type, this.totalSpend,
      this.percentage);
}
