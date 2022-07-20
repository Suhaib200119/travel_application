import 'package:flutter/material.dart';

import 'package:travel_application/Feature/View/WidgetsGlobal.dart';

import '../../../../Core/ColorsManager.dart';

class WidgetsHomeScreen {
  static Widget ContainerSearch(
      {required BuildContext context,
      required String text,
      required Function function}) {
    return Container(
      height: 48,
      padding: EdgeInsetsDirectional.only(start: 4),
      margin: EdgeInsetsDirectional.only(start: 16),
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: ColorsManager.colorsManager.lightBlueColor_EBF0FF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Row(
          children: [
            const Icon(
              Icons.search,
              size: 24,
              color: Color(0xFF2277FE),
            ),
            SizedBox(
              width: 8,
            ),
            WidgetsGlobal.customText(
              context: context,
              text: text,
              fontSize: 14,
              fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
              fontWeight: FontWeight.w400,
            )
          ],
        ),
      ),
    );
  }

  static Widget IconAppBarHomeScreen({
    required Widget icon,
    required Function function,
  }) {
    return IconButton(
      onPressed: () {
        function();
      },
      icon: icon,
    );
  }

  static Widget cardCategory({
    required BuildContext context,
    required String categoryImagePath,
    required String categoryName,
  }) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(
            categoryImagePath,
            width: 80,
            height: 70,
          ),
          SizedBox(
            height: 8,
          ),
          WidgetsGlobal.customText(
              context: context,
              text: categoryName,
              fontSize: 10,
              fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
              fontWeight: FontWeight.w400),
        ],
      ),
    );
  }




}
