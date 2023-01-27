import 'package:eccomerse_vegetable/app/modules/widgets/common_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
static LoginController get to => Get.find();
bool remember=true;
bool hidepassword=true;
  final loginFormKey = GlobalKey<FormState>();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();


  login()async{
    Widgets.showLoader("Login");
   await  Future.delayed(const Duration(seconds: 1));
   Widgets.hideLoader();
    Get.offAllNamed('/home');
  }



}
