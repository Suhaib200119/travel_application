import 'package:flutter/material.dart';
import 'package:travel_application/Feature/Localizations/LocalizationsModel/AppLocale.dart';
import '../../Core/ColorsManager.dart';

class WidgetsGlobal {

  static Widget myTextFormField({
    required BuildContext context,
    required TextEditingController controller,
    required TextInputType keyboardType,
    required String errorMessage,
    required Widget prefixIcon,
    required String hintText,
    bool isEmail = false,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: (inputUser) {
        if (inputUser!.trim().isEmpty) {
          return "${getLang(context, errorMessage)}";
        } else {
          if (isEmail) {
            if (inputUser.contains("@") == false) {
              return "${getLang(context, "The email must contain the @ character.")}";
            } else if (inputUser.contains("gmail.") == false) {
              return "${getLang(context, "The email must contain the gmail word.")}";
            } else if (inputUser.endsWith(".com") == false) {
              return "${getLang(context, "Email must end with .com")}";
            } else {
              return null;
            }
          } else {
            return null;
          }
        }
      },
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: "${getLang(context, hintText)}",
        border: const OutlineInputBorder(
            borderSide: BorderSide(width: 20, color: Color(0xFFEBF0FF))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.colorsManager.lightBlueColor_EBF0FF,
          ),
        ),
      ),
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
      "${getLang(context, text)}",
      style: TextStyle(
          fontSize: fontSize, color: fontcolor, fontWeight: fontWeight),
    );
  }


}
