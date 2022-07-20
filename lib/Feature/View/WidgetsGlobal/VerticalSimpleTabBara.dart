import 'package:flutter/material.dart';

import '../WidgetsGlobal.dart';

class VerticalSimpleTabBara{
static Widget getItem(
{
  required BuildContext context,
  required String text_1,
  required String text_2
}
    ){
  return   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      WidgetsGlobal.customText(
          context: context,
          text: text_1,
          fontSize: 14,
          fontcolor: Color(0xFF121212),
          fontWeight: FontWeight.w700),
      WidgetsGlobal.customText(
          context: context,
          text: text_2,
          fontSize: 12,
          fontcolor: Color(0xFF7E7E7E),
          fontWeight: FontWeight.w400),
    ],
  );
}
}