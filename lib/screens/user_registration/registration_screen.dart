import 'package:shop_app/screens/user_registration/registration_controller.dart';
import 'package:shop_app/theme/app_dimens.dart';
import 'package:shop_app/widgets/appbar/secondry_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class RegistrationScreen extends GetView<RegistrationController> {
  RegistrationScreen();

//custom method
  final _form = GlobalKey<FormState>();
  final focusEmail = FocusNode();
  final focusPhone = FocusNode();

  void saveForm(BuildContext context) {
    print(controller.userInfo.toString());
    final isvalid = _form.currentState!.validate();
    if (isvalid == false) {
      return;
    }
    _openCustomDialog(context);
    Future.delayed(Dimens.durationXXL, () => controller.redirectToHome());
    _form.currentState?.save();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar("Create User"),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.grid16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: _form,
                child: Column(children: <Widget>[
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Full name',
                      ),
                      textInputAction:
                          TextInputAction.next, //show next icon in keyboard
                      onFieldSubmitted: (value) {
                        FocusScope.of(context)
                            .requestFocus(focusEmail); //define focusnumber
                      },
                      validator: (value) {
                        if ((value ?? "").isEmpty) {
                          return 'Please enter your name';
                        } else if (!controller.validateName(value!)) {
                          return 'invalid name';
                        }
                        return null; //means no error
                      },
                      onChanged: (value) {
                        controller.userInfo.name = value;
                      }),
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                      ),
                      textInputAction:
                          TextInputAction.next, //show next icon in keyboard
                      keyboardType: TextInputType.emailAddress,
                      focusNode: focusEmail,
                      onFieldSubmitted: (value) {
                        print(controller.validateEmail(value));
                        FocusScope.of(context).requestFocus(focusPhone);
                      },
                      validator: (value) {
                        if ((value ?? "").isEmpty) {
                          return 'Please enter your email address';
                        } else if (!controller.validateEmail(value!)) {
                          return 'invalid email address';
                        }

                        return null; //means no error
                      },
                      onChanged: (value) {
                        controller.userInfo.email = value;
                      }),
                  TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Phone No.',
                      ),
                      keyboardType: TextInputType.phone,
                      inputFormatters: [],
                      textInputAction:
                          TextInputAction.done, //show next icon in keyboard
                      focusNode: focusPhone,
                      validator: (value) {
                        if ((value ?? "").isEmpty) {
                          return 'Please enter your phone no.';
                        } else if (!controller.validatePhone(value!)) {
                          return 'invalid phone no.';
                        }
                        // else if(controller.validateEmail(value))
                        return null; //means no error
                      },
                      onChanged: (value) {
                        controller.userInfo.phone = value;
                      })
                ]),
              ),
              SizedBox(height: Dimens.grid20),
              SizedBox(height: Dimens.grid20),
              Align(
                  alignment: Alignment.centerRight,
                  child: OutlinedButton(
                      onPressed: () {
                        saveForm(context);
                      },
                      child: Text("Sign Up"))),
              SizedBox(height: Dimens.grid20),
              SizedBox(height: Dimens.grid20),
              Text("")
            ],
          ),
        ));
  }

  void _openCustomDialog(context) {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          return Transform.scale(
            scale: a1.value,
            child: Opacity(
              opacity: a1.value,
              child: AlertDialog(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(Dimens.grid16)),
                title: Text('Success !!'),
                content: Lottie.asset('assets/lottie/completed.json',
                    repeat: false,
                    reverse: false,
                    width: Dimens.grid140,
                    height: Dimens.grid140,
                    fit: BoxFit.contain,
                    addRepaintBoundary: true),
              ),
            ),
          );
        },
        transitionDuration: Dimens.durationS,
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) => Container());
  }
}
