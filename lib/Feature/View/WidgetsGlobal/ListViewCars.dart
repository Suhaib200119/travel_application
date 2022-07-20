import 'package:flutter/material.dart';

import '../../DataList/DataList.dart';
import '../WidgetsGlobal.dart';
import 'CardCar.dart';

class ListViewCars{
  static Widget getItem({
    required BuildContext context,
  }) {
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 8, bottom: 8),
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: DataList.dataCarRent.length,
        itemBuilder: (ctx, index) {
          return CardCar.getItem(
            context: context,
            carImagePath: DataList.dataCarRent[index].carImagePath,
            description: DataList.dataCarRent[index].description,
            address: DataList.dataCarRent[index].address,
            ird: DataList.dataCarRent[index].ird,
          );
        },
      ),
    );
  }
}