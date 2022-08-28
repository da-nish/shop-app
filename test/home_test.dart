import 'package:flutter_test/flutter_test.dart';
import 'package:food_app/models/item_model.dart';
import 'package:food_app/screens/home/home_controller.dart';

void main() {
  test('Home test', () {
    final home = HomeController();

    home.add(ItemModel.testData("9"));
    expect(home.cartSize, 1);

    home.remove(ItemModel.testData("9"));
    expect(home.cartSize, 0);

    home.remove(ItemModel.testData("9"));
    expect(home.cartSize, 0);

    home.add(ItemModel.testData("9"));
    expect(home.cartSize, 1);

    home.add(ItemModel.testData("9"));
    expect(home.cartSize, 1);

    home.add(ItemModel.testData("10"));
    expect(home.cartSize, 2);

    home.add(ItemModel.testData("11"));
    expect(home.cartSize, 3);
  });
}
