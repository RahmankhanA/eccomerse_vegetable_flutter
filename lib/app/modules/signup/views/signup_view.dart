import 'dart:developer';

import 'package:eccomerse_vegetable/app/data/colors.dart';
import 'package:eccomerse_vegetable/app/utils/decoration.dart';
import 'package:eccomerse_vegetable/app/utils/validators.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:glassmorphism_kit/glassmorphism_kit.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Image.network(
                "https://media.istockphoto.com/id/1280856062/photo/variety-of-fresh-organic-vegetables-and-fruits-in-the-garden.jpg?b=1&s=170667a&w=0&k=20&c=gx9tVgd6Xp8mLfnS5QCt_KpSmoFrSP78mNeQZiJDQpg=",
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                scale: 1,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GlassContainer(
                  alignment: Alignment.center,
                  height: size.height * 0.60,
                  width: size.width,
                  color: Colors.white,
                  colorOpacity: 0.1,
                  blurStrengthX: 10,
                  blurStrengthY: 10,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Please enter your details to continue",
                        style: TextStyle(color: AppColor.secondaryTextColor),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Form(
                          key: controller.signupFormKey,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              children: [
                                TextFormField(
                                  onChanged: (value) {
                                    // LoginController.controller.email = value;
                                  },
                                  cursorColor: AppColor.secondaryTextColor,
                                  style: const TextStyle(
                                      color: AppColor.secondaryTextColor),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  autofocus: true,
                                  textInputAction: TextInputAction.next,
                                  // maxLength: 14,

                                  decoration:
                                      Decorations.inputDecoration.copyWith(
                                    labelText: "Username ",
                                    prefixIcon: const Icon(
                                      Icons.person,
                                      color: AppColor.primaryTextColor,
                                    ),
                                  ),
                                  validator: (val) =>
                                      FormValidators.usernameValidation(
                                          val, "username"),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                TextFormField(
                                  onChanged: (value) {
                                    // LoginController.controller.email = value;
                                  },
                                  cursorColor: AppColor.secondaryTextColor,
                                  style: const TextStyle(
                                      color: AppColor.secondaryTextColor),
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  autofocus: true,
                                   textInputAction: TextInputAction.next,
                                  // maxLength: 14,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration:
                                      Decorations.inputDecoration.copyWith(
                                    labelText: "Email ",
                                    prefixIcon: const Icon(
                                      Icons.email,
                                      color: AppColor.primaryTextColor,
                                    ),
                                  ),
                                  validator: (val) =>
                                      FormValidators.validateEmail(
                                          val.toString()),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                GetBuilder(
                                  init: controller,
                                  initState: (_) {},
                                  builder: (_) {
                                    return TextFormField(
                                      onChanged: (value) {
                                        // LoginController.controller.email = value;
                                        controller.checkPassword(value);
                                      },
                                      cursorColor: AppColor.secondaryTextColor,
                                      style: const TextStyle(
                                          color: AppColor.secondaryTextColor),
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      autofocus: true,
                                      // maxLength: 14,
                                      onFieldSubmitted: (value) {
                                        if (controller
                                            .signupFormKey.currentState!
                                            .validate()) {
                                          controller.signup();
                                        }
log("enter pressed");
                                      },

                                      decoration: Decorations.inputDecoration
                                          .copyWith(
                                              labelText: "Password ",
                                              prefixIcon: const Icon(
                                                Icons.lock,
                                                color:
                                                    AppColor.primaryTextColor,
                                              ),
                                              suffixStyle: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                              suffixText:
                                                  controller.displayText),
                                      validator: (val) =>
                                          FormValidators.validatePassword(
                                              val.toString()),
                                    );
                                  },
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text("Remember me"),
                                    GetBuilder(
                                      init: controller,
                                      initState: (_) {},
                                      builder: (_) {
                                        return Switch(
                                            activeColor:
                                                AppColor.elevatedButtonColor,
                                            thumbColor: MaterialStateProperty
                                                .resolveWith<Color>(
                                                    (Set<MaterialState>
                                                        states) {
                                              if (states.contains(
                                                  MaterialState.disabled)) {
                                                return AppColor
                                                    .secondaryTextColor
                                                    .withOpacity(.48);
                                              }
                                              return AppColor
                                                  .secondaryTextColor;
                                            }),
                                            value: controller.remember,
                                            onChanged: ((value) {
                                              controller.remember = value;
                                              controller.update();
                                            }));
                                      },
                                    )
                                  ],
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: size.width * 0.75,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.elevatedButtonColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {
                            if (controller.signupFormKey.currentState!
                                .validate()) {
                              controller.signup();
                            }
                          },
                          child: const Text("CREATE AN ACCOUNT"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
