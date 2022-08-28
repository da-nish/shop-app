import 'package:flutter_test/flutter_test.dart';
import 'package:food_app/screens/user_registration/registration_controller.dart';

void main() {
  test('Login Name validation', () {
    final login = RegistrationController();

    bool result = login.validateName("");
    expect(result, false);

    result = login.validateName("123");
    expect(result, false);

    result = login.validateName("name121");
    expect(result, false);

    result = login.validateName("user namr");
    expect(result, true);
  });

  test('Login Email validation', () {
    final login = RegistrationController();

    bool result = login.validateEmail("");
    expect(result, false);

    result = login.validateEmail("email");
    expect(result, false);

    result = login.validateEmail("email@mail");
    expect(result, false);

    result = login.validateEmail("email@mail.");
    expect(result, false);

    result = login.validateEmail("emailmail.com");
    expect(result, false);

    result = login.validateEmail("email@mail.com");
    expect(result, true);
  });

  test('Login Phone validation', () {
    final login = RegistrationController();

    bool result = login.validatePhone("");
    expect(result, false);

    result = login.validatePhone("123");
    expect(result, false);

    result = login.validatePhone("99887a76655");
    expect(result, false);

    result = login.validatePhone("9988776655");
    expect(result, true);

    result = login.validatePhone("+919988776655");
    expect(result, true);

    result = login.validatePhone("+9199887766552");
    expect(result, true);
  });
}
