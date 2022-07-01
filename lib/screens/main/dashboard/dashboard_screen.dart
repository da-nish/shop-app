import 'package:food_app/screens/main/dashboard/dashboard_controller.dart';
import 'package:food_app/screens/main/first_tab/firsttab_screen.dart';
import 'package:food_app/screens/main/second_tab/secondtab_screen.dart';
import 'package:food_app/theme/app_assets.dart';
import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:food_app/utils/double_extension.dart';
import 'package:food_app/utils/string_extension.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final PersistentTabController _tabController =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashboardController>();
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: Stack(alignment: Alignment.bottomCenter, children: [
        PersistentTabView(
          context,
          controller: _tabController,
          screens: [
            _wrapPage(FirstTabScreen()),
            _wrapPage(SecondTabScreen()),
            _wrapPage(Container()),
            _wrapPage(Container()),
          ],
          items: [
            _item(AppAssets.nagivationTab1),
            _item(AppAssets.nagivationTab2),
            _item(AppAssets.nagivationTab3),
            _item(AppAssets.nagivationTab4),
          ],
          confineInSafeArea: false,
          backgroundColor: AppColors.white,
          handleAndroidBackButtonPress: true,
          resizeToAvoidBottomInset: true,
          stateManagement: true,
          hideNavigationBarWhenKeyboardShows: true,
          decoration: NavBarDecoration(
            borderRadius: BorderRadius.all(Radius.circular(Dimens.grid8)),
            colorBehindNavBar: AppColors.appBackground,
          ),
          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          itemAnimationProperties: ItemAnimationProperties(
            duration: Dimens.durationS,
            curve: Curves.ease,
          ),
          screenTransitionAnimation: ScreenTransitionAnimation(
            animateTabTransition: true,
            curve: Curves.ease,
            duration: Dimens.durationXS,
          ),
          navBarStyle: NavBarStyle.style2,
          bottomScreenMargin: 50,
          margin: EdgeInsets.all(20),
          padding: NavBarPadding.all(5),
        ),
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Obx(
        () => controller.hasItem()
            ? Container(
                // color: Color.fromARGB(114, 255, 193, 7),
                margin: EdgeInsets.only(bottom: 30, right: 18, left: 18),
                height: 60,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(Dimens.grid8)),
                  color: AppColors.selectedButton,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Items: " + controller.totalItems.toString()),
                        Text(
                            "Quantity: " + controller.totalQuantity.toString()),
                      ],
                    ),
                    Text(
                      controller.totalPrice.withDigits(2).rupee(),
                      style: AppTextStyle.h3Bold(),
                    )
                  ],
                ),
              )
            : Container(),
      ),
    );
  }

  PersistentBottomNavBarItem _item(String asset) => PersistentBottomNavBarItem(
      activeColorPrimary: AppColors.black,
      activeColorSecondary: AppColors.activeGreen,
      inactiveColorPrimary: AppColors.textPrimary,
      icon: SvgPicture.asset(asset, color: AppColors.dark),
      inactiveIcon: SvgPicture.asset(asset, color: AppColors.grey));

  Widget _wrapPage(Widget child) => child;
}
