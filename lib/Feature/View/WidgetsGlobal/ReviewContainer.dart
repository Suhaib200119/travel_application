import 'package:flutter/material.dart';

import '../../../Core/ColorsManager.dart';
import '../../Model/ReviewClass.dart';
import '../WidgetsGlobal.dart';
import 'RatingWidget.dart';

class ReviewContainer {
  static Widget getItem(
      {required BuildContext context, required Review review}) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 16, end: 16, bottom: 24),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                review.customrImage,
                width: 50,
                height: 50,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WidgetsGlobal.customText(
                      context: context,
                      text: review.customrName,
                      fontSize: 14,
                      fontcolor: ColorsManager.colorsManager.blankColor_121212,
                      fontWeight: FontWeight.w700),
                  RatingClass.getRating(ratingValue: review.rate),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          WidgetsGlobal.customText(
              context: context,
              text: review.comment,
              fontSize: 12,
              fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
              fontWeight: FontWeight.w400),
          Row(
            children: [
              ...List.generate(3, (index) {
                return Container(
                    margin: const EdgeInsetsDirectional.only(
                        bottom: 16, top: 16, end: 16),
                    child: Image.asset(
                      review.images[index],
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ));
              }),
            ],
          ),
          WidgetsGlobal.customText(
              context: context,
              text: review.date,
              fontSize: 10,
              fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
              fontWeight: FontWeight.w400),
        ],
      ),
    );
  }
}
