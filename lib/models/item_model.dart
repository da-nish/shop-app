import 'package:flutter/painting.dart';
import 'package:food_app/theme/app_colors.dart';

class ItemModel {
  final String name;
  final String image;
  final Color color;
  final String id;
  final double price;
  final String description;
  int count;

  ItemModel(
      this.id, this.name, this.color, this.image, this.price, this.description,
      {this.count = 1});

  ItemModel.testData(this.id,
      {this.color = AppColors.black,
      this.count = 1,
      this.description = "",
      this.image = "",
      this.name = "title",
      this.price = 20});
}
