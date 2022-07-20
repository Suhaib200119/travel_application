import 'package:flutter/cupertino.dart';

import '../../../../Core/ColorsManager.dart';
import '../../../Localizations/LocalizationsModel/AppLocale.dart';
import '../../WidgetsGlobal.dart';

class WidgetCarScreen{
  //containeer Order Details Screen
  static Widget getContainerDetails({
    required BuildContext context,
    required String imagePath,
    required String nameItem,
    required int people,
    required String borrowing,
    required String delivery,
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
                    "$people ${getLang(context, "people")}",
                    style: TextStyle(
                        fontSize: 12,
                        color: ColorsManager.colorsManager.blankColor_121212,
                        fontWeight: FontWeight.w400),
                  ),
                ],
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
                  text: "Borrowing",
                  fontSize: 12,
                  fontcolor: ColorsManager.colorsManager.blankColor_121212,
                  fontWeight: FontWeight.w700),
              WidgetsGlobal.customText(
                  context: context,
                  text: borrowing,
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
                  text: "Delivery",
                  fontSize: 12,
                  fontcolor: ColorsManager.colorsManager.blankColor_121212,
                  fontWeight: FontWeight.w700),
              WidgetsGlobal.customText(
                  context: context,
                  text: delivery,
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