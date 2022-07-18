import 'package:flutter/material.dart';

import '../../../../Core/ColorsManager.dart';
import '../../../Localizations/LocalizationsModel/AppLocale.dart';
import '../../WidgetsGlobal.dart';

class WidgetsLoginScreen {


  static Widget myDivider() {
    return const Expanded(
      flex: 2,
      child: Divider(
        color: ColorsManager.dividerColorLoginScreen,
        height: 1,
      ),
    );
  }

  static Widget ContainerSites({
    required BuildContext context,
    required String text,
    required String imageName,
    required Function function,
  }) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 64,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Color(0xFFEBF0FF)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(),
            WidgetsGlobal.customText(
                context: context,
                text: text,
                fontSize: 14,
                fontcolor: ColorsManager.colorTextContainerSitesLoginScreen,
                fontWeight: FontWeight.w700),
            Spacer(),
            Spacer(),
            Image.asset("assets/images/$imageName"),
            Spacer(),

          ],
        ),
      ),
    );
  }
}
