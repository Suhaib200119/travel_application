import 'package:flutter/material.dart';

import '../../../Core/ColorsManager.dart';

class Indicator{
  static Widget IndicatorPageView({
    required bool isActive,
  }) {
    return Container(
      width: 13,
      height: 13,
      margin: const EdgeInsetsDirectional.only(end: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isActive == true
              ? ColorsManager.colorsManager.primaryColor_2277FE
              : ColorsManager.colorsManager.lightBlueColor_EBF0FF),
    );
  }
}