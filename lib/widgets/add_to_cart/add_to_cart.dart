import 'package:food_app/models/item_model.dart';
import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:food_app/theme/app_text_style.dart';

class AddToCart extends StatefulWidget {
  final Function onAdd;
  final Function onRemove;
  final ItemModel item;
  final bool isAdded;
  const AddToCart(
      {required this.item,
      required this.onAdd,
      required this.onRemove,
      this.isAdded = false,
      Key? key})
      : super(key: key);

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  bool? isInCard;

  @override
  void initState() {
    super.initState();
    isInCard = widget.isAdded;
  }

  void buttonAction() {
    if (isInCard!) {
      widget.onRemove();
      isInCard = false;
    } else {
      widget.onAdd();
      isInCard = true;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Dimens.durationL,
      padding: const EdgeInsets.all(Dimens.grid8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.grid20),
          border: Border.all(
              color: isInCard! ? AppColors.textSecondary : AppColors.grey,
              width: 2)),
      child: GestureDetector(
        onTap: () => buttonAction(),
        child: Text(
          isInCard! ? "Remove from cart" : "Add to cart",
          style: AppTextStyle.h4Regular(),
        ),
      ),
    );
  }
}
