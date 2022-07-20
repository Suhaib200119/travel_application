import 'package:flutter/material.dart';
import 'package:travel_application/Feature/DataList/DataList.dart';
import 'package:travel_application/Feature/Model/HotelClass.dart';
import 'package:travel_application/Feature/View/Screens/CarsScreen/CarsScreen.dart';
import 'package:travel_application/Feature/View/Screens/HomeScreen/WidgetsHomeScreen.dart';
import 'package:travel_application/Feature/View/WidgetsGlobal.dart';
import 'package:travel_application/Feature/View/WidgetsGlobal/SimpleTabBar.dart';
import 'package:travel_application/Feature/View/WidgetsGlobal/VerticalSimpleTabBara.dart';

import '../../../../Core/ColorsManager.dart';

import '../../WidgetsGlobal/CardHotel.dart';
import '../../WidgetsGlobal/ListViewCars.dart';
import '../HotelScreen/HotelScreen.dart';

class HomeScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Expanded(
                      child: WidgetsHomeScreen.ContainerSearch(
                          context: context,
                          text: "Where do you want to vacation?",
                          function: () {}),
                    ),
                    WidgetsHomeScreen.IconAppBarHomeScreen(
                        icon: Image.asset("assets/images/heart.png"),
                        function: () {}),
                    WidgetsHomeScreen.IconAppBarHomeScreen(
                        icon: Image.asset("assets/images/notification.png"),
                        function: () {}),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Image.asset(
                  "assets/images/imageHomeScreen.png",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 16, top: 24),
                  child: WidgetsGlobal.customText(
                    context: context,
                    text: "Categories",
                    fontSize: 16,
                    fontcolor: ColorsManager().blankColor_121212,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: DataList.dataCategory.length,
                    itemBuilder: (ctx, index) {
                      return MaterialButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          if(DataList.dataCategory[index].id=="1"){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (ctx) {
                                  return HotelScreen();
                                }));
                          }else if(DataList.dataCategory[index].id=="4"){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (ctx) {
                                  return CarScreen();
                                }));
                          }

                        },
                        child: WidgetsHomeScreen.cardCategory(
                          context: context,
                          categoryImagePath: DataList.dataCategory[index].categoryImage,
                          categoryName: DataList.dataCategory[index].categoryName,
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.only(start: 16, top: 8),
                      child: WidgetsGlobal.customText(
                        context: context,
                        text: "Special for you",
                        fontSize: 14,
                        fontcolor: ColorsManager
                            .colorsManager.blankColor_121212,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                          start: 16, top: 8, end: 16),
                      child: TextButton(
                        onPressed: () {},
                        child: WidgetsGlobal.customText(
                          context: context,
                          text: "View All",
                          fontSize: 14,
                          fontcolor: ColorsManager
                              .colorsManager.primaryColor_2277FE,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(bottom: 8),
                  height: 310,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: DataList.dataHotels.length,
                    itemBuilder: (ctx, index) {
                      return CardHotel.getItem(
                          context: context,
                          hotelImagePath: DataList.dataHotels[index].ImagePath,
                          hotelName: DataList.dataHotels[index].categoryName,
                          hotelAddress: DataList.dataHotels[index].hotelAddress,
                          hotelIRDNew: DataList.dataHotels[index].categoryIrd,
                          hotelIRDOld: DataList.dataHotels[index].hotelOldIrd,
                          discountPercentage:
                          DataList.dataHotels[index].discountValue,
                          ratingValue: DataList.dataHotels[index].categoryRate);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: VerticalSimpleTabBara.getItem(
                      context: context,
                      text_1: "Exciting road trip",
                      text_2:
                          "Now, you can rent a keyless car in order to take a stroll at your vacation !"),
                ),
                ListViewCars.getItem(context: context),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                      start: 8, end: 8, bottom: 8),
                  child: Image.asset(
                    "assets/images/banner.png",
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                ),
                VerticalSimpleTabBara.getItem(
                    context: context,
                    text_1: "Leave the tired",
                    text_2: "The place is comfortable, the price is friendly"),
                const SizedBox(
                  height: 20,
                ),
                GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.65,
                    ),
                    itemCount: DataList.dataHotels.length,
                    itemBuilder: (ctx, index) {
                      return CardHotel.getItem(
                          context: context,
                          hotelImagePath: DataList.dataHotels[index].ImagePath,
                          hotelName: DataList.dataHotels[index].categoryName,
                          hotelAddress: DataList.dataHotels[index].hotelAddress,
                          hotelIRDNew: DataList.dataHotels[index].categoryIrd,
                          hotelIRDOld: DataList.dataHotels[index].hotelOldIrd,
                          discountPercentage:
                          DataList.dataHotels[index].discountValue,
                      ratingValue: DataList.dataHotels[index].categoryRate);
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
