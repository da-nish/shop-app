import 'package:food_app/models/category_model.dart';
import 'package:food_app/screens/main/first_tab/firsttab_controller.dart';
import 'package:food_app/theme/app_decoration.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:food_app/utils/string_extension.dart';
import 'package:flutter/material.dart';

class CategoryRow extends StatelessWidget {
  final CategoryModel item;
  final FirstTabController controller;
  CategoryRow(this.item, this.controller);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Get.toNamed(GetPages.spendCategory, arguments: item);
      },
      child: Container(
        height: 95,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: AppBoxDecoration.borderBottom(),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 4),
                Row(
                  children: [
                    // _circularImage(AppAssets.swiggyColored),
                    // _circularImage(AppAssets.amazon),
                    // _circularImage(AppAssets.amazon),
                  ],
                )
              ],
            ),
            Expanded(child: Container()),
            Center(
              child: Text(
                controller.getSpend(item.type).toString().rupee(),
                style: AppTextStyle.h3Bold(),
              ),
            ),
            SizedBox(width: 10),
            Center(
              child: Icon(Icons.arrow_forward_ios_rounded, size: 16),
            ),
          ],
        ),
      ),
    );
  }
}
