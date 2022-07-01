import 'package:flutter/material.dart';

mixin AppAssets {
  //PNG
  static const String basePNGPath = "assets/images/png/";
  static const String logoImage = basePNGPath + 'logo.png';

  //SVG
  static const String baseSVGPath = "assets/images/svg/";
  static const String bell = baseSVGPath + 'bell.svg';
  static const String entertainment = baseSVGPath + 'entertainment.svg';
  static const String food = baseSVGPath + 'food.svg';
  static const String plus = baseSVGPath + 'plus.svg';
  // static const String shop = baseSVGPath + 'shop.svg';
  static const String user = baseSVGPath + 'user.svg';

  // static const String amazon = baseSVGPath + 'amazon.svg';
  // static const String fastCard = baseSVGPath + 'fast_card.svg';
  // static const String flipkart = baseSVGPath + 'flipkart.svg';
  // static const String netflix = baseSVGPath + 'netflix.svg';
  // static const String swiggy = baseSVGPath + 'swiggy.svg';
  // static const String thunder = baseSVGPath + 'thunder.svg';
  // static const String mcDonalColored = baseSVGPath + 'mcdonal_colored.svg';
  // static const String swiggyColored = baseSVGPath + 'swiggy_colored.svg';
  // static const String zomatoColored = baseSVGPath + 'zomato_colored.svg';

  //bottom navigation
  static const String baseNavigationPath = "assets/images/bottom_navigation/";
  static const String nagivationTab1 = baseNavigationPath + 'home.svg';
  static const String nagivationTab2 = baseNavigationPath + 'card.svg';
  static const String nagivationTab3 = baseNavigationPath + 'bars.svg';
  static const String nagivationTab4 = baseNavigationPath + 'reward.svg';
}

mixin AppIcons {
  static const Icon rupee = Icon(IconData(0x20B9, fontFamily: 'MaterialIcons'));
}
