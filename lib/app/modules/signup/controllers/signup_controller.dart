import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController
  GlobalKey signupFormKey = GlobalKey<FormState>();
  double strength = 0;
  String displayText = '';
  bool remember=true;

  void checkPassword(String value) {
    RegExp numReg = RegExp(r".*[0-9].*");
    RegExp letterReg = RegExp(r".*[A-Za-z].*");
    var _password = value.trim();

    if (_password.isEmpty) {
      strength = 0;
      displayText = 'too short';
    } else if (_password.length < 8) {
      strength = 2 / 4;
      displayText = 'weak';
    } else {
      if (!letterReg.hasMatch(_password) || !numReg.hasMatch(_password)) {
        // Password length >= 8
        // But doesn't contain both letter and digit characters
        strength = 3 / 4;
        displayText = 'good';
      } else {
        // Password length >= 8
        // Password contains both letter and digit characters

        strength = 1;
        displayText = 'strong';
      }
    }
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
