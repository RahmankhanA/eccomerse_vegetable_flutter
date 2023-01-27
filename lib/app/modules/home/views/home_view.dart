import 'dart:developer';

import 'package:eccomerse_vegetable/app/modules/cart/views/cart_view.dart';
import 'package:eccomerse_vegetable/app/modules/category/views/category_view.dart';
import 'package:eccomerse_vegetable/app/modules/home/views/home_page.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int selectedIndexValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <Widget>[
       HomePage(),
       CategoryView(),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
       CartView(),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 5'),
        ),
      ][selectedIndexValue],
      bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndexValue,
          onDestinationSelected: (value) {
            log(value.toString());
            setState(() {
              selectedIndexValue = value;
            });
          },
          destinations: const [
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.arrow_back_ios_new_outlined),
                label: "category"),
            NavigationDestination(
                icon: Icon(Icons.favorite), label: "Favorite"),
            NavigationDestination(
                icon: Icon(Icons.shopping_cart), label: "Cart"),
            NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          ]),
    );
  }
}
