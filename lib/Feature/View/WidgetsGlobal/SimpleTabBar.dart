import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../Core/ColorsManager.dart';
import '../../DataList/DataList.dart';
import '../WidgetsGlobal.dart';
import 'RatingWidget.dart';

class SimpleTabBar {
  static Widget getItem(
      {required BuildContext context,
      required int indexPageViewProvider,
      required List<dynamic> categoryList}) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 16, end: 16, bottom: 16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WidgetsGlobal.customText(
                  context: context,
                  text: "Review",
                  fontSize: 14,
                  fontcolor: ColorsManager.colorsManager.blankColor_121212,
                  fontWeight: FontWeight.w700),
              TextButton(
                onPressed: () {},
                child: WidgetsGlobal.customText(
                    context: context,
                    text: "View All",
                    fontSize: 14,
                    fontcolor: ColorsManager.colorsManager.primaryColor_2277FE,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Row(
            children: [
              RatingClass.getRating(
                  ratingValue:
                      categoryList[indexPageViewProvider].categoryRate),
              WidgetsGlobal.customText(
                  context: context,
                  text: "4.5 (5 Review)",
                  fontSize: 10,
                  fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                  fontWeight: FontWeight.w400),
            ],
          ),
        ],
      ),
    );
  }
}
