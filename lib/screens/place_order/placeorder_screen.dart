import 'dart:async';

import 'package:food_app/routes/get_pages.dart';
import 'package:food_app/screens/place_order/widget/showup_widget.dart';
import 'package:food_app/theme/app_colors.dart';
import 'package:food_app/theme/app_dimens.dart';
import 'package:food_app/theme/app_text_style.dart';
import 'package:food_app/utils/string_extension.dart';
import 'package:food_app/widgets/appbar/secondry_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class PlaceOrderScreen extends StatefulWidget {
  PlaceOrderScreen();

  @override
  State<PlaceOrderScreen> createState() => _PlaceOrderScreenState();
}

class _PlaceOrderScreenState extends State<PlaceOrderScreen>
    with SingleTickerProviderStateMixin {
  bool load = false;
  bool paymentSuccess = false;
  String? amount;
  int countdown = 5;

  @override
  void initState() {
    super.initState();
    Map<String, dynamic> arg = Get.arguments;
    amount = arg['totalAmount'] ?? "";
    if (amount!.isEmpty) Get.back();
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 5), () {
      Get.offAllNamed(GetPages.home);
    });
  }

  void pay() {
    setState(() {
      load = true;
    });
    Future.delayed(const Duration(seconds: 2), () {
      if (!paymentSuccess)
        setState(() {
          paymentSuccess = true;
          // load = false;
          startTimer();
          redirect();
        });
    });
  }

  Timer? _timer;
  int _start = 5;

  void startTimer() {
    _timer = new Timer.periodic(
      const Duration(seconds: 1),
      (Timer timer) {
        _start == 0 ? timer.cancel() : _start--;
        setState(() {});
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar("Payment", showBackButton: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (paymentSuccess)
                Container(
                  child: Column(
                    children: [
                      ShowUp(
                        child: Text(
                          "Order placed successfully !! ",
                          style: AppTextStyle.h3Regular(),
                        ),
                        delay: 2,
                      ),
                      ShowUp(
                        child: Text(
                          "Your order has been placed successfully",
                          style: AppTextStyle.h5Regular(color: AppColors.grey),
                        ),
                        delay: 2,
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: Dimens.grid20),
              Text(
                amount!.rupee(),
                style: AppTextStyle.h2Regular(),
              ),
              const SizedBox(height: Dimens.grid20),
              if (paymentSuccess)
                Lottie.asset('assets/lottie/done.json',
                    repeat: false,
                    reverse: false,
                    width: Dimens.grid80,
                    fit: BoxFit.contain,
                    addRepaintBoundary: true)
              else
                AnimatedContainer(
                  curve: Curves.easeIn,
                  margin: EdgeInsets.only(
                      top: load || paymentSuccess ? Dimens.grid20 : 0),
                  width: load ? Dimens.grid60 : Dimens.grid200,
                  duration: const Duration(seconds: 1),
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.grid10, vertical: Dimens.grid10),
                  decoration: BoxDecoration(
                      color: AppColors.dark,
                      borderRadius: BorderRadius.circular(Dimens.grid48)),
                  child: load
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(child: CircularProgressIndicator()),
                          ],
                        )
                      : GestureDetector(
                          onTap: () => pay(),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: Dimens.grid24),
                            child: Text(
                              "Pay Now",
                              textAlign: TextAlign.center,
                              style: AppTextStyle.h2Bold(),
                            ),
                          ),
                        ),
                ),
              SizedBox(height: Dimens.grid20),
              Text(
                  !paymentSuccess
                      ? ""
                      : ("Redirecting in " + _start.toString() + " seconds..."),
                  style: AppTextStyle.h5Regular(color: AppColors.textGrey))
            ],
          ),
        ));
  }
}
