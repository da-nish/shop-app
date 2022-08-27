import 'package:food_app/screens/home/home_binding.dart';
import 'package:food_app/screens/home/home_screen.dart';

import 'package:get/get.dart';

class GetPages {
  // static const dashboard = "/dashboard";
  static const home = "/home";
  static const secondTab = "/second-tab";

  static List<GetPage<dynamic>> routes() => [
        // GetPage(
        //     name: dashboard,
        //     page: () => DashboardScreen(),
        //     binding: DashboardBinding()),
        GetPage(name: home, page: () => HomeScreen(), binding: HomeBinding()),
        // GetPage(
        //     name: home,
        //     page: () => FirstTabScreen(),
        //     binding: FirstTabBinding()),
      ];
}
