import 'package:flutter/material.dart';
import 'package:travel_application/Feature/Localizations/LocalizationsModel/AppLocale.dart';

class WidgetsGlobal {
  static Widget myButton(
      {
        required BuildContext context,
        required String text,
         double fontSize=14,
        Color fontColor=Colors.white,
        FontWeight fontWeight=FontWeight.w700,
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
        child: Text("${getLang(context, text)}",style: TextStyle(
          fontSize: fontSize,
          color: fontColor,
          fontWeight: fontWeight
        ),),
      ),
    );
  }
}
