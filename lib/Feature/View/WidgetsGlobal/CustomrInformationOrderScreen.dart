import 'package:flutter/material.dart';

import '../../../Core/ColorsManager.dart';
import '../WidgetsGlobal.dart';

class CustomrInformationOrderScreen {
  static Widget getItem(
      {required BuildContext context,
      required customrName,
      required customrAddress,
      required String customrPhoneNumber,
       required Function function,
      }) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 220,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
            color: ColorsManager.colorsManager.primaryColor_2277FE, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WidgetsGlobal.customText(
              context: context,
              text: customrName,
              fontSize: 14,
              fontcolor: ColorsManager.colorsManager.blankColor_121212,
              fontWeight: FontWeight.w700),
          WidgetsGlobal.customText(
              context: context,
              text: customrAddress,
              fontSize: 12,
              fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
              fontWeight: FontWeight.w400),
          WidgetsGlobal.customText(
              context: context,
              text: customrPhoneNumber,
              fontSize: 12,
              fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
              fontWeight: FontWeight.w400),
          Row(
            children: [
              MaterialButton(
                onPressed: () {function();},
                child: WidgetsGlobal.customText(
                    context: context,
                    text: "Edit",
                    fontSize: 14,
                    fontcolor: ColorsManager.colorsManager.whiteColor,
                    fontWeight: FontWeight.w700),
                color: ColorsManager.colorsManager.primaryColor_2277FE,
                height: 48,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    color: ColorsManager.colorsManager.grayColor_7E7E7E,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
