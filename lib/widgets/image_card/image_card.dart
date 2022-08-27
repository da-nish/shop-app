import 'package:food_app/theme/app_assets.dart';
import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_decoration.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageCard extends StatelessWidget {
  final String image;
  final Color background;
  final double? height;
  const ImageCard(this.image,
      {this.background = AppColors.grey, this.height, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.grid40,
      height: height ?? double.infinity,
      padding: const EdgeInsets.all(Dimens.grid10),
      decoration: AppBoxDecoration.coloredImageCard(backgound: background),
      child: SvgPicture.asset(
        image.isEmpty ? AppAssets.shop : image,
      ),
    );
  }
}
