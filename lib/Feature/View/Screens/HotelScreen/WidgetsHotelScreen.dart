import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../Core/ColorsManager.dart';
import '../../../DataList/DataList.dart';
import '../../../Localizations/LocalizationsModel/AppLocale.dart';
import '../../WidgetsGlobal.dart';

class WidgetsHotelScreen{
  //containeer Order Details Screen
  static Widget getContainerDetails({
    required BuildContext context,
    required String imagePath,
    required String nameItem,
    required String note,
    required int numberLike,
    required String Check_in,
    required String Check_out,
  }) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(borderRadius:BorderRadius.circular(4),
                  child: Image.asset(imagePath,height: 80,width: 80,fit: BoxFit.cover,)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WidgetsGlobal.customText(
                      context: context,
                      text: nameItem,
                      fontSize: 14,
                      fontcolor: ColorsManager.colorsManager.blankColor_121212,
                      fontWeight: FontWeight.w700),
                  Text(
                    "$numberLike ${getLang(context, "Like")}",
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorsManager.colorsManager.blankColor_121212,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                    color: Color.fromRGBO(251, 113, 129, 0.2),
                    borderRadius: BorderRadius.circular(4)
                ),
                child: WidgetsGlobal.customText(
                    context: context,
                    text: note,
                    fontSize: 14,
                    fontcolor: ColorsManager.colorsManager.redAccentColor_FB7181,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WidgetsGlobal.customText(
                  context: context,
                  text: "Check-in",
                  fontSize: 12,
                  fontcolor: ColorsManager.colorsManager.blankColor_121212,
                  fontWeight: FontWeight.w700),
              WidgetsGlobal.customText(
                  context: context,
                  text: Check_in,
                  fontSize: 12,
                  fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                  fontWeight: FontWeight.w400),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WidgetsGlobal.customText(
                  context: context,
                  text: "Check-out",
                  fontSize: 12,
                  fontcolor: ColorsManager.colorsManager.blankColor_121212,
                  fontWeight: FontWeight.w700),
              WidgetsGlobal.customText(
                  context: context,
                  text: Check_out,
                  fontSize: 12,
                  fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                  fontWeight: FontWeight.w400),
            ],
          ),
        ],
      ),
    );
  }
}