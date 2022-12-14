import 'package:shop_app/theme/app_dimens.dart';
import 'package:shop_app/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget> actions;

  HomeAppBar(this.title, {this.actions = const []});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: Dimens.grid20, vertical: Dimens.grid12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: Text(
                title,
                style: AppTextStyle.h2Bold(),
              )),
              ...actions,
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
