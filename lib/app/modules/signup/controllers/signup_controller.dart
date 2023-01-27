import 'package:eccomerse_vegetable/app/modules/widgets/common_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get to => Get.find();
  final signupFormKey = GlobalKey<FormState>();

  bool hidepassword = true;
  double strength = 0;
  String displayText = '';
  bool remember = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

 signup() async {
    Widgets.showLoader("Signup");
    await Future.delayed(const Duration(seconds: 1));
    Widgets.hideLoader();
    Get.offAllNamed('/home');
  }



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
