import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_application/Feature/View/WidgetsGlobal.dart';

import '../../../../Core/ColorsManager.dart';

class WidgetsHomeScreen {
  static Widget ContainerSearch(
      {required BuildContext context,
      required String text,
      required Function function}) {
    return Container(
      height: 48,
      padding: EdgeInsetsDirectional.only(start: 4),
      margin: EdgeInsetsDirectional.only(start: 16),
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: ColorsManager.colorBorderContainerHomeScreen),
        borderRadius: BorderRadius.circular(5),
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Row(
          children: [
            const Icon(
              Icons.search,
              size: 24,
              color: Color(0xFF2277FE),
            ),
            SizedBox(
              width: 8,
            ),
            WidgetsGlobal.customText(
              context: context,
              text: text,
              fontSize: 14,
              fontcolor: ColorsManager.colorTextSearchHomeScreen,
              fontWeight: FontWeight.w400,
            )
          ],
        ),
      ),
    );
  }

  static Widget IconAppBarHomeScreen({
    required Widget icon,
    required Function function,
  }) {
    return IconButton(
      onPressed: () {
        function();
      },
      icon: icon,
    );
  }

  static Widget cardCategory({
    required BuildContext context,
    required String categoryImagePath,
    required String categoryName,
  }) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(
            categoryImagePath,
            width: 80,
            height: 70,
          ),
          SizedBox(
            height: 8,
          ),
          WidgetsGlobal.customText(
              context: context,
              text: categoryName,
              fontSize: 10,
              fontcolor: ColorsManager.colorcategoryNameHomeScreen,
              fontWeight: FontWeight.w400),
        ],
      ),
    );
  }

  static Widget cardHotels({
    required BuildContext context,
    required String hotelImagePath,
    required String hotelName,
    required String hotelAddress,
    required double hotelIRDNew,
    required double hotelIRDOld,
    required int discountPercentage,
  }) {
    return Container(
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
                      fontcolor: ColorsManager.colorHotelNameHomeScreen,
                      fontWeight: FontWeight.w700),
                RatingBar.builder(
                  itemSize: 20,
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1),
                  itemBuilder: (context, _) =>  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                  WidgetsGlobal.customText(
                      context: context,
                      text: hotelAddress,
                      fontSize: 14,
                      fontcolor: ColorsManager.colorHotelAddressScreen,
                      fontWeight: FontWeight.w400),
                  const SizedBox(height: 10,),
                  Text(
                    "IRD $hotelIRDNew",
                    style: const TextStyle(
                        fontSize: 14,
                        color: ColorsManager.colorIrdNewHomeScreen,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Text(
                        "IRD $hotelIRDOld",
                        style: const TextStyle(
                            fontSize: 14,
                            color: ColorsManager.colorIrdOldNHomeScreen,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "$discountPercentage %Off",
                        style: const TextStyle(
                            fontSize: 14,
                            color: ColorsManager
                                .colorTextDiscountPercentageHomeScreen,
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
