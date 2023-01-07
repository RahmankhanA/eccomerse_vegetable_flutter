import 'package:eccomerse_vegetable/app/data/colors.dart';
import 'package:flutter/material.dart';

class Decorations {
  // static var searchCarnivalDecoration = InputDecoration(
  //   hintText: 'Search for Carnivals and Events ...',
  //   hintStyle: const TextStyle(fontSize: 15.0),
  //   filled: true,
  //   prefixIcon: Padding(
  //     padding: const EdgeInsets.all(11.0),
  //     child: SvgPicture.asset(
  //       'assets/svg/search.svg',
  //     ),
  //   ),
  //   fillColor: Colors.white,
  //   border: const OutlineInputBorder(
  //     borderRadius: BorderRadius.all(
  //       Radius.circular(10.0),
  //     ),
  //   ),
  //   counter: const Offstage(),
  // );

  // BottomNavigationBarItem(
  //               icon: Icon(Icons.person_outline),
  //               activeIcon: Icon(Icons.person),
  //               label: "Profile"),
  static var inputDecoration = const InputDecoration(
    focusColor: AppColor.secondaryTextColor,
    contentPadding: EdgeInsets.symmetric(
      horizontal: 20.0,
      vertical: 6.0,
    ),
    hintStyle: TextStyle(fontSize: 15.0),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.secondaryTextColor),
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    labelStyle: TextStyle(color: AppColor.primaryTextColor),
    prefixIconColor: AppColor.primaryTextColor,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
    ),
    counter: Offstage(),
  );
}
