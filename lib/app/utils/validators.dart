import 'package:get/get.dart';

class FormValidators {
  static dynamic validateEmail(String val) {
    if (val.isEmpty) {
      return "Email is Required";
    } else if (!GetUtils.isEmail(val)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }
  //  static dynamic validatePassword(String value) {
  //   RegExp regex =
  //       RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  //   if (value.isEmpty) {
  //     return 'Please enter password';
  //   } else {
  //     if (!regex.hasMatch(value)) {
  //       return 'Enter valid password';
  //     } else {
  //       return null;
  //     }
  //   }
  // }

  static dynamic basicValidation(String? val, String label) {
    if (val == null || val.isEmpty) {
      return "${label.tr} ${"is required".tr}";
    } else if (RegExp(r'[^\w\s]+').hasMatch(val)) {
      return "Invalid $label";
    } else {
      return null;
    }
  }

  static dynamic validatePassword(String val) {
    if (val.isEmpty) {
      return "Password is Required";
    } else if (!GetUtils.isLengthGreaterOrEqual(val, 8)) {
      return "Password length must be grater than 8";
    } else {
      return null;
    }
  }
}
