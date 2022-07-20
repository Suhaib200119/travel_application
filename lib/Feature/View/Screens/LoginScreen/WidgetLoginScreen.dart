import 'package:flutter/material.dart';
import '../../../../Core/ColorsManager.dart';
import '../../WidgetsGlobal.dart';

class WidgetsLoginScreen {
  static Widget myDivider() {
    return  Expanded(
      flex: 2,
      child: Divider(
        color: ColorsManager.colorsManager.lightBlueColor_EBF0FF,
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
        border: Border.all(width: 1, color: const Color(0xFFEBF0FF)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            WidgetsGlobal.customText(
                context: context,
                text: text,
                fontSize: 14,
                fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                fontWeight: FontWeight.w700),
            const Spacer(),
            const Spacer(),
            Image.asset("assets/images/$imageName"),
            const Spacer(),

          ],
        ),
      ),
    );
  }
}
