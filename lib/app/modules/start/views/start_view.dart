import 'package:eccomerse_vegetable/app/data/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:glassmorphism_kit/glassmorphism_kit.dart';
import 'dart:ui';
import '../controllers/start_controller.dart';

class StartView extends GetView<StartController> {
  const StartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
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
                height: size.height * 0.55,
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
                      'Lets Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: size.width * 0.75,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.fbButtonColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Text(" Facebook"),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.75,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                             backgroundColor: AppColor.twitterButtonColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Text("Twitter"),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.75,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                             backgroundColor: AppColor.googleButtonColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: const Text("Google"),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account?",
                        style: TextStyle(color: Colors.white),),
                        TextButton(
                          onPressed: () =>Get.toNamed('/login'),
                          child: const Text("Login",
                          style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const Text("OR",
                    style: TextStyle(color: Colors.white),
                    ),
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
                        onPressed: () => Get.toNamed('/signup'),
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
    );
  }
}
