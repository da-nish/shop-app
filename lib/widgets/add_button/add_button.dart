import 'package:food_app/theme/app_assets.dart';
import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddButton extends StatelessWidget {
  final Function onPressed;
  const AddButton(this.onPressed, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.grid8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.grid20),
          border: Border.all(color: AppColors.white, width: 2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(AppAssets.plus),
          SizedBox(width: Dimens.grid4),
          InkWell(
            onTap: () => onPressed.call(),
            child: Text("Add expense",
                style: AppTextStyle.h4Bold(color: AppColors.white)),
          )
        ],
      ),
    );
  }
}
