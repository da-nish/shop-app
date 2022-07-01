import 'package:food_app/screens/main/dashboard/dashboard_binding.dart';
import 'package:food_app/screens/main/dashboard/dashboard_screen.dart';
import 'package:food_app/screens/main/first_tab/firsttab_binding.dart';
import 'package:food_app/screens/main/first_tab/firsttab_screen.dart';
import 'package:food_app/screens/main/second_tab/secondtab_binding.dart';
import 'package:food_app/screens/main/second_tab/secondtab_screen.dart';
import 'package:get/get.dart';

class GetPages {
  static const dashboard = "/dashboard";
  static const home = "/first-tab";
  static const firstTab = home;
  static const secondTab = "/second-tab";

  static List<GetPage<dynamic>> routes() => [
        GetPage(
            name: dashboard,
            page: () => DashboardScreen(),
            binding: DashboardBinding()),
        GetPage(
            name: secondTab,
            page: () => SecondTabScreen(),
            binding: SecondTabBinding()),
        GetPage(
            name: home,
            page: () => FirstTabScreen(),
            binding: FirstTabBinding()),
      ];
}
