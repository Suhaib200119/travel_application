import 'package:flutter/material.dart';
import 'package:travel_application/Feature/Localizations/LocalizationsModel/AppLocale.dart';

import '../../Core/ColorsManager.dart';

class WidgetsGlobal {
  static Widget myButton({
    required BuildContext context,
    required String text,
    double fontSize = 14,
    Color fontColor = Colors.white,
    FontWeight fontWeight = FontWeight.w700,
    required Function function,
  }) {
    return Container(
      margin: EdgeInsetsDirectional.only(top: 16),
      height: 64,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(5)),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          "${getLang(context, text)}",
          style: TextStyle(
              fontSize: fontSize, color: fontColor, fontWeight: fontWeight),
        ),
      ),
    );
  }

  static Widget myTextFormField({
    required BuildContext context,
    required TextEditingController controller,
    required TextInputType keyboardType,
    required String errorMessage,
    required Widget prefixIcon,
    required String hintText,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: (inputUser) {
        if (inputUser!.trim().isEmpty) {
          return "${getLang(context, "$errorMessage")}";
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: "${getLang(context, hintText)}",
        border: const OutlineInputBorder(
            borderSide: BorderSide(width: 20, color: Color(0xFFEBF0FF))),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.borderColorTextFormFieldLoginScreen,
          ),
        ),
      ),
    );
  }


  static Widget imageLogo(){
    return Image.asset(
      "assets/images/logoLoginScreen.png",
      width: 72,
      height: 72,
    );
  }
  static Widget customText({
    required BuildContext context,
    required String text,
    required double fontSize,
    required Color fontcolor,
    required FontWeight fontWeight,
  }) {
    return Text(
      "${getLang(context, "$text")}",
      style: TextStyle(
          fontSize: fontSize, color: fontcolor, fontWeight: FontWeight.w700),
    );
  }
}
