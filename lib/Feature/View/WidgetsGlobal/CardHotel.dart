import 'package:flutter/material.dart';

import '../../../Core/ColorsManager.dart';
import '../WidgetsGlobal.dart';
import 'RatingWidget.dart';

class CardHotel{
  static Widget getItem({
    required BuildContext context,
    required String hotelImagePath,
    required String hotelName,
    required String hotelAddress,
    required double hotelIRDNew,
    required double hotelIRDOld,
    required int discountPercentage,
    required double ratingValue
  }) {
    return Container(
      width: 200,
      child: Card(
        elevation: 32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(5), topRight: Radius.circular(5)),
                child: Image.asset(
                  hotelImagePath,
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
                      text: hotelName,
                      fontSize: 16,
                      fontcolor: ColorsManager.colorsManager.blankColor_121212,
                      fontWeight: FontWeight.w700),
                  //rating
                  RatingClass.getRating(ratingValue: ratingValue),
                  WidgetsGlobal.customText(
                      context: context,
                      text: hotelAddress,
                      fontSize: 14,
                      fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                      fontWeight: FontWeight.w400),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "IRD $hotelIRDNew",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorsManager.colorsManager.primaryColor_2277FE,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "IRD $hotelIRDOld",
                        style: TextStyle(
                            fontSize: 14,
                            color: ColorsManager.colorsManager.grayColor_7E7E7E,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "$discountPercentage %Off",
                        style: TextStyle(
                            fontSize: 14,
                            color: ColorsManager
                                .colorsManager.redAccentColor_FB7181,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
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