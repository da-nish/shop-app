import 'package:flutter/material.dart';

mixin AppAssets {
  //SVG
  static const String baseSVGPath = "assets/images/svg/";
  static const String shop = baseSVGPath + 'shop.svg';

  //bottom navigation
  static const String _baseNavigationPath = "assets/images/bottom_navigation/";
  static const String nagivationTab1 = _baseNavigationPath + 'home.svg';
  static const String nagivationTab2 = _baseNavigationPath + 'card.svg';
  static const String nagivationTab3 = _baseNavigationPath + 'bars.svg';
  static const String nagivationTab4 = _baseNavigationPath + 'reward.svg';
}

mixin AppIcons {
  static const Icon rupee = Icon(IconData(0x20B9, fontFamily: 'MaterialIcons'));
}
