import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_decoration.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MerchantCard extends StatelessWidget {
  final String image;
  final bool colorCard;
  const MerchantCard(this.image, {this.colorCard = false, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = colorCard ? AppColors.blue : AppColors.white;
    return Container(
      width: Dimens.grid40,
      height: Dimens.grid40,
      padding: const EdgeInsets.all(Dimens.grid10),
      decoration: colorCard
          ? AppBoxDecoration.coloredImageCard()
          : AppBoxDecoration.imageCard(),
      child: SvgPicture.asset(
        image,
        color: color,
      ),
    );
  }
}
