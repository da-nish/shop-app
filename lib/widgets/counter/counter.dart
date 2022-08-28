import 'package:shop_app/models/cart_item_model.dart';
import 'package:shop_app/theme/app_colors.dart';
import 'package:shop_app/theme/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/theme/app_text_style.dart';

class Counter extends StatefulWidget {
  final Function onIncrement;
  final Function onDecrement;
  final CartItemModel cartItem;
  const Counter(
      {required this.cartItem,
      required this.onIncrement,
      required this.onDecrement,
      Key? key})
      : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.grid8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.grid20),
          border: Border.all(
              color: widget.cartItem.count > 0
                  ? AppColors.textSecondary
                  : AppColors.grey,
              width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: widget.onDecrement.call(),
              child: Icon(Icons.remove, size: 16, color: AppColors.white)),
          Text(
            widget.cartItem.item.count.toString(),
            style: AppTextStyle.h4Regular(),
          ),
          InkWell(
              onTap: widget.onIncrement.call(),
              child: Icon(Icons.add, size: 16, color: AppColors.white)),
        ],
      ),
    );
  }
}
