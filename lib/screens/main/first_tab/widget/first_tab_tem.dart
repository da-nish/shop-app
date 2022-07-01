import 'package:food_app/models/item_model.dart';
import 'package:food_app/screens/main/first_tab/firsttab_controller.dart';
import 'package:food_app/theme/app_decoration.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:food_app/utils/string_extension.dart';
import 'package:flutter/material.dart';
import 'package:food_app/widgets/counter/counter.dart';

class FirstTabItem extends StatefulWidget {
  final ItemModel item;
  final FirstTabController controller;
  FirstTabItem(this.item, this.controller);

  @override
  State<FirstTabItem> createState() => _FirstTabItemState();
}

class _FirstTabItemState extends State<FirstTabItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(GetPages.spendCategory, arguments: item);
      },
      child: Container(
        height: 80,
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        decoration: AppBoxDecoration.borderBottom(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.item.name,
                  style: AppTextStyle.h3Bold(),
                ),
                SizedBox(width: 10),
                // Text(
                //   item.description,
                //   style: AppTextStyle.h5Regular(color: AppColors.textSecondary),
                // ),
                SizedBox(width: 10),
                Text(
                  widget.item.price.toString().rupee(),
                  style: AppTextStyle.h5Bold(),
                ),
              ],
            ),
            Expanded(child: Container()),
            SizedBox(width: 10),
            Container(
              width: 100,
              child: Counter(
                  item: widget.item,
                  onDecrement: () => () {
                        widget.controller.onDecrement(widget.item);
                        setState(() {});
                      },
                  onIncrement: () => () {
                        widget.controller.onIncrement(widget.item);
                        setState(() {});
                      }),
            )
          ],
        ),
      ),
    );
  }
}
