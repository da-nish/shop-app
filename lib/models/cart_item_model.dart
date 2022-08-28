import 'package:shop_app/models/item_model.dart';

class CartItemModel {
  int count;
  final String itemId;
  final ItemModel item;

  CartItemModel(
      {required this.count, required this.itemId, required this.item});
}
