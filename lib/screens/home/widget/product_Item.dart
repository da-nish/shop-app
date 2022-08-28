import 'package:food_app/models/item_model.dart';
import 'package:food_app/screens/home/home_controller.dart';
import 'package:food_app/theme/app_decoration.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:food_app/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/add_to_cart/add_to_cart.dart';
import 'package:food_app/widgets/image_card/image_card.dart';

class HomeProductItem extends StatefulWidget {
  final ItemModel item;
  final HomeController controller;
  HomeProductItem(this.item, this.controller);

  @override
  State<HomeProductItem> createState() => _HomeProductItemState();
}

class _HomeProductItemState extends State<HomeProductItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimens.grid80,
      padding: EdgeInsets.symmetric(
          vertical: Dimens.grid12, horizontal: Dimens.grid20),
      decoration: AppBoxDecoration.borderBottom(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageCard(widget.item.image),
          SizedBox(width: Dimens.grid8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.item.name,
                style: AppTextStyle.h3Bold(),
              ),
              SizedBox(width: Dimens.grid20),
              Text(
                widget.item.price.toString().rupee(),
                style: AppTextStyle.h5Bold(),
              ),
            ],
          ),
          Expanded(child: Container()),
          SizedBox(width: Dimens.grid10),
          Container(
            // width: 100,
            child: AddToCart(
                item: widget.item,
                onRemove: () {
                  widget.controller.remove(widget.item);
                  setState(() {});
                },
                onAdd: () {
                  widget.controller.add(widget.item);
                  setState(() {});
                }),
          )
        ],
      ),
    );
  }
}
