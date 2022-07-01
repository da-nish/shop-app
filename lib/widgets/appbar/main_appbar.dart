import 'package:food_app/theme/app_assets.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class CustomMainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final onTap;

  CustomMainAppBar({this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      titleSpacing: 0,
      title: Row(
        children: [
          Image.asset(AppAssets.logoImage),
          Expanded(child: Container()),
          SvgPicture.asset(AppAssets.bell),
          SizedBox(width: Dimens.grid20),
          SvgPicture.asset(AppAssets.user),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
