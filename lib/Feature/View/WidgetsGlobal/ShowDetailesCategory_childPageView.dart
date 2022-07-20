import 'package:flutter/material.dart';

import '../../../Core/ColorsManager.dart';
import '../Screens/CarsScreen/OrderDetailsCar.dart';
import '../Screens/HotelScreen/OrderDetailsHotel.dart';
import '../WidgetsGlobal.dart';
import 'RatingWidget.dart';

class ShowDetailesCategory_childPageView {

  //Child in pageView Hotel Screen
  static Widget getItem({
    required BuildContext context,
    required List<dynamic> categoryList,
    required int indexItemInCategoryList,
    required String type,
  }) {
    return Column(
      children: [
        Image.asset(
          categoryList[indexItemInCategoryList].ImagePath,
          width: MediaQuery.of(context).size.width,
          height: 250,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WidgetsGlobal.customText(
                      context: context,
                      text: categoryList[indexItemInCategoryList].categoryName,
                      fontSize: 20,
                      fontcolor: ColorsManager.colorsManager.blankColor_121212,
                      fontWeight: FontWeight.w700),
                  IconButton(
                      onPressed: () {
                        if (type == "hotel") {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return OrderDetailsHotel(
                                type, indexItemInCategoryList);
                          }));
                        } else if (type == "car") {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return OrderDetailsCar(
                                type, indexItemInCategoryList);
                          }));
                        }
                      },
                      icon: Icon(Icons.info_outline)),
                ],
              ),
              //rating
              RatingClass.getRating(ratingValue: categoryList[indexItemInCategoryList].categoryRate),
              const SizedBox(
                height: 16,
              ),
              Text(
                "IRD ${categoryList[indexItemInCategoryList].categoryIrd}",
                style: TextStyle(
                    fontSize: 16,
                    color: ColorsManager.colorsManager.primaryColor_2277FE,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
