import 'package:flutter/material.dart';
import 'package:food_app/theme/app_decoration.dart';

class PlaceOrderCard extends StatelessWidget {
  const PlaceOrderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 80,
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 20),
        decoration: AppBoxDecoration.container(),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Item"),
                Text("45"),
              ],
            ),
            const SizedBox(height: 16),
            Align(
                alignment: Alignment.centerRight,
                child: OutlinedButton(
                    onPressed: () {}, child: Text("Place Order")))
          ],
        ));
  }
}
