import 'package:flutter/material.dart';
import 'package:travel_application/Core/ColorsManager.dart';

import '../../../Localizations/LocalizationsModel/AppLocale.dart';

class WidgetsIntroductionScreen {
  static Widget CardPageView(
      {required BuildContext context,
      required String imagePath,
      required String tilte,
      required String subTitle}) {
    return Column(
      children: [
        Image.asset(imagePath,
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover),
        const SizedBox(
          height: 8,
        ),
        Text(
          tilte,
          style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: ColorsManager.colorTitlePageView),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          subTitle,
          textAlign: TextAlign.center,
          style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: ColorsManager.colorSubTitlePageView),
        ),
      ],
    );
  }

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
              ? ColorsManager.backgroundColorIndicator_1PageView
              : ColorsManager.backgroundColorIndicator_2PageView),
    );
  }

  static Widget containerPageViewLessThan2(
  {
  required BuildContext context,
    required String skipText,
    required String nextText,
    required Function function_skip,
    required Function function_next

  }
      ){
    return Container(
      margin:
      const EdgeInsetsDirectional.only(bottom: 64, start: 16, end: 16),
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: (){
              function_skip();
            },
            child: Text(
              "${getLang(context, "$skipText")}",
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: ColorsManager
                      .colorTextBottomText_1PageViewScreen),
            ),
          ),
          TextButton(
            onPressed: (){
              function_next();
            },
            child: Text(
              "${getLang(context, "$nextText")}",
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: ColorsManager
                      .colorTextBottomText_2PageViewScreen),
            ),
          ),
        ],
      ),
    );
  }

  static Widget containerPageView3({
    required BuildContext context,
    required String startText,
    required Function function_start

  }){
    return Container(
      margin: const EdgeInsetsDirectional.only(
          bottom: 64, start: 16, end: 16),
      width: MediaQuery.of(context).size.width,
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
        onPressed: (){
          function_start();
        },
        child: Text(
          "${getLang(context, "$startText")}",
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: ColorsManager.colorTextBottomText_2PageViewScreen,
          ),
        ),
      ),
    );
  }




}
