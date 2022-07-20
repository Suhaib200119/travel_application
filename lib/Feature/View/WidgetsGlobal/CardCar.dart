import 'package:flutter/material.dart';

import '../../../Core/ColorsManager.dart';
import '../WidgetsGlobal.dart';

class CardCar{
  static Widget getItem({
    required BuildContext context,
    required String carImagePath,
    required String description,
    required String address,
    required double ird,
  }) {
    return SizedBox(
      width: 200,
      height: 300,
      child: Card(
        elevation: 32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Image.asset(
                  carImagePath,
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 8,
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(start: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WidgetsGlobal.customText(
                      context: context,
                      text: description,
                      fontSize: 16,
                      fontcolor: ColorsManager.colorsManager.blankColor_121212,
                      fontWeight: FontWeight.w700),
                  WidgetsGlobal.customText(
                      context: context,
                      text: address,
                      fontSize: 14,
                      fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                      fontWeight: FontWeight.w400),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "IRD $ird",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorsManager.colorsManager.primaryColor_2277FE,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}