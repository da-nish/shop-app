import 'package:food_app/models/cart_item_model.dart';
import 'package:food_app/screens/cart_screen/cart_controller.dart';
import 'package:food_app/theme/app_decoration.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:food_app/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/counter/counter.dart';
import 'package:food_app/widgets/image_card/image_card.dart';

class CartItem extends StatefulWidget {
  final CartItemModel cartItem;
  final CartController controller;
  CartItem(this.cartItem, this.controller);

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      decoration: AppBoxDecoration.borderBottom(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageCard(widget.cartItem.item.image),
          SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.cartItem.item.name,
                style: AppTextStyle.h3Bold(),
              ),
              SizedBox(width: 10),
              Text(
                widget.cartItem.item.price.toString().rupee(),
                style: AppTextStyle.h5Bold(),
              ),
              Text(
                "Total: " +
                    getTotalPrice(
                        widget.cartItem.item.price, widget.cartItem.item.count),
                style: AppTextStyle.h5Regular(),
              )
            ],
          ),
          Expanded(child: Container()),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                child: Counter(
                    cartItem: widget.cartItem,
                    onDecrement: () => () {
                          widget.controller.onDecrement(widget.cartItem.item);
                          setState(() {});
                        },
                    onIncrement: () => () {
                          widget.controller.onIncrement(widget.cartItem.item);
                          setState(() {});
                        }),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String getTotalPrice(double price, int count) {
    return (price * count).toString();
  }
}
