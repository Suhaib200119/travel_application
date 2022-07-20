import 'package:flutter/material.dart';

import '../../../Core/ColorsManager.dart';
import '../WidgetsGlobal.dart';

class ShowDetailesCategory_propertiesContainer{
  static Widget getItem({
  required BuildContext context,
    required List<dynamic> categoryList,
    required int indexPageViewInProvider

}){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          WidgetsGlobal.customText(
              context: context,
              text: "Description",
              fontSize: 16,
              fontcolor: ColorsManager.colorsManager.blankColor_121212,
              fontWeight: FontWeight.w700),
          const SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: WidgetsGlobal.customText(
                    context: context,
                    text: "Properties",
                    fontSize: 16,
                    fontcolor:
                    ColorsManager.colorsManager.blankColor_121212,
                    fontWeight: FontWeight.w400),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ...List.generate(
                      categoryList[indexPageViewInProvider]
                          .propertiesList
                          .length, (index) {
                    return WidgetsGlobal.customText(
                        context: context,
                        text:
                        "${categoryList[indexPageViewInProvider].propertiesList[index]}",
                        fontSize: 14,
                        fontcolor: ColorsManager
                            .colorsManager.grayColor_7E7E7E,
                        fontWeight: FontWeight.w300);
                  }),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          WidgetsGlobal.customText(
              context: context,
              text:
              "${categoryList[indexPageViewInProvider].categoryDescription}",
              fontSize: 14,
              fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
              fontWeight: FontWeight.w400),
        ],
      ),
    );
  }
}