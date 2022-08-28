import 'package:shop_app/screens/cart_screen/cart_binding.dart';
import 'package:shop_app/screens/cart_screen/cart_screen.dart';
import 'package:shop_app/screens/home/home_binding.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/place_order/placeorder_binding.dart';
import 'package:shop_app/screens/place_order/placeorder_screen.dart';
import 'package:shop_app/screens/user_registration/registration_binding.dart';
import 'package:shop_app/screens/user_registration/registration_screen.dart';

import 'package:get/get.dart';

class GetPages {
  // static const dashboard = "/dashboard";
  static const home = "/home";
  static const cartScreen = "/cart-screen";
  static const placeOrderScreen = "/place-order-screen";
  static const userRegistrationScreen = "/user-registration-screen";

  static List<GetPage<dynamic>> routes() => [
        // GetPage(
        //     name: dashboard,
        //     page: () => DashboardScreen(),
        //     binding: DashboardBinding()),
        GetPage(name: home, page: () => HomeScreen(), binding: HomeBinding()),
        GetPage(
          name: cartScreen,
          page: () => CartScreen(),
          binding: CartBinding(),
        ),
        GetPage(
          name: placeOrderScreen,
          page: () => PlaceOrderScreen(),
          binding: PlaceOrderBinding(),
        ),
        GetPage(
          name: userRegistrationScreen,
          page: () => RegistrationScreen(),
          binding: RegistrationBinding(),
        ),
        // GetPage(
        //     name: home,
        //     page: () => FirstTabScreen(),
        //     binding: FirstTabBinding()),
      ];
}
