import 'package:food_app/routes/get_pages.dart';
import 'package:food_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Food App",
      theme: AppTheme.defaultTheme,
      debugShowCheckedModeBanner: false,
      getPages: GetPages.routes(),
      initialRoute: GetPages.home,
    );
  }
}
