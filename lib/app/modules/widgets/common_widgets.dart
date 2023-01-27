import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

// import 'package:imh_hospital_app/helpers/helpers.dart';
// import 'package:imh_hospital_app/models/country_model.dart';
// import 'package:imh_hospital_app/widgets/select_country_widget.dart';

// import '../constants/constants.dart';
// import '../modules/my_bookings/appointment_model.dart';
// import '../utils/colors.dart';

class Widgets {
  // static headingText(String label,
  //     {double? size, Color? color, FontWeight? fontWeight}) {
  //   return Text(
  //     label,
  //     style: TextStyle(
  //         fontSize: size ?? 18.0,
  //         fontWeight: fontWeight ?? FontWeight.bold,
  //         color: color ?? Palette.darkGreenColor),
  //   );
  // }

  static noDataFoundText({String? customText}) {
    return Center(
      child: Text(customText ?? "No Data Found"),
    );
  }



  static void hideLoader() {
    EasyLoading.dismiss();
  }

  static void showSnackBar(String message) {
    Fluttertoast.showToast(msg: message);
  }

  static Widget widgetLoader() {
    return const Center(
      child: CircularProgressIndicator(
        color: Color.fromARGB(255, 60, 22, 226),
      ),
    );
  }

  Future<DateTime?> selectDate(BuildContext context,
      {DateTime? initialDate, DateTime? firstDate, DateTime? lastDate}) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: initialDate!,
        firstDate: firstDate ?? DateTime(1900, 8),
        lastDate: lastDate ?? DateTime(2101));

    if (picked != null) {
      return picked;
    } else {
      return null;
    }
  }
  // Future<DateTime?> selectDate(BuildContext context,
  //     {DateTime? initialDate, DateTime? firstDate, DateTime? lastDate}) async {
  //   if (false) {
  //     DateTime? pickedDate;
  //     await showCupertinoModalPopup(
  //         context: context,
  //         builder: (_) => Container(
  //           height: 190,
  //           color: const Color.fromARGB(255, 255, 255, 255),
  //           child: Column(
  //             children: [
  //               SizedBox(
  //                 height: 180,
  //                 child: CupertinoDatePicker(
  //                     initialDateTime: DateTime.now(),
  //                     minimumDate: firstDate ?? DateTime(1900, 8),
  //                     mode: CupertinoDatePickerMode.date,
  //                     onDateTimeChanged: (val) {
  //                       pickedDate = val;
  //                     }),
  //               ),
  //             ],
  //           ),
  //         ));
  //     return pickedDate;
  //   } else {
  //     final DateTime? picked = await showDatePicker(
  //         context: context,
  //         initialDate: initialDate!,
  //         firstDate: firstDate ?? DateTime(1900, 8),
  //         lastDate: lastDate ?? DateTime(2101));
  //     if (picked != null){
  //       return picked;
  //     }else{
  //       return null;
  //     }
  //   }
  // }



  Widget countryPicker(String? country,
      {String? placeHolder,
      required Function onTap,
      Color? color,
      BoxDecoration? boxDecoration}) {
    return InkWell(
      onTap: () => onTap(),
      child: FormField(validator: (value) {
        return country == null ? "Country is required" : null;
      }, builder: (state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 7.0),
              height: 50.0,
              decoration: boxDecoration ??
                  BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                          color: state.errorText != null
                              ? Colors.red
                              : Colors.grey)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      country ?? placeHolder ?? "",
                      style: TextStyle(
                          color: color ?? Colors.grey, fontSize: 15.0),
                    ),
                    Icon(
                      Icons.flag_outlined,
                      color: state.errorText != null ? Colors.red : null,
                    )
                  ],
                ),
              ),
            ),
            if (state.errorText != null)
              Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      state.errorText ?? "",
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 13.0,
                      ),
                    ),
                  ),
                ],
              )
          ],
        );
      }),
    );
  }



 

  static Widget bottomBar({required Widget content}) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
          height: 95,
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0))),
          child: content),
    );
  }

  static Widget roundButton(
      {required String text,
      required Function function,
      double? width,
      double? height}) {
    return InkWell(
      onTap: () => function(),
      child: Container(
        height: height ?? 50.0,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color.fromARGB(255, 60, 22, 226)),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ),
      ),
    );
  }

  static Widget divider({bool isVertical = false}) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: isVertical
          ? const VerticalDivider(
              thickness: 1.0,
              color: Colors.black12,
            )
          : const Divider(
              height: 1.0,
              thickness: 1.0,
              color: Colors.black12,
            ),
    );
  }

  static void showLoader(String message) async {
    EasyLoading.show(
      status: message,
    );
    await Future.delayed(const Duration(seconds: 30));
    if (EasyLoading.isShow) {
      hideLoader();
    }
  }

  static Widget text1({String? text, Color? color}) {
    return Text(
      text ?? "",
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, color: color
          //color: darkGreenColor
          ),
    );
  }

  static Widget text2({String? text, Color? color}) {
    return Text(
      text ?? "",
      overflow: TextOverflow.clip,
      softWrap: true,
      style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600, color: color
          //color: darkGreenColor
          ),
    );
  }

  static Widget text3({String? text, Color? color, FontWeight? fontWeight}) {
    return Text(
      text ?? "",
      overflow: TextOverflow.clip,
      style: TextStyle(fontSize: 16.0, color: color, fontWeight: fontWeight),
    );
  }

  static Widget text4({String? text, Color? color}) {
    return Text(
      text ?? "",
      style: TextStyle(fontSize: 14.0, color: color),
    );
  }

  static Widget appLogo() {
    return Image.asset(
      'assets/images/appLogo.png',
      width: 200,
      height: 100,
    );
  }

  static Future<bool> confirmationDialogue(
      context, String title, String content) async {
    bool isConfirm = false;
    await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    isConfirm = false;
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'No',
                    style: TextStyle(),
                  )),
              ElevatedButton(
                  onPressed: () async {
                    isConfirm = true;
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Yes',
                    style: TextStyle(),
                  )),
            ],
          );
        });
    return isConfirm;
  }
}
