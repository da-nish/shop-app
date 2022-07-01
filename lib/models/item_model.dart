import 'package:flutter/painting.dart';

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
      {this.count = 0});
}
