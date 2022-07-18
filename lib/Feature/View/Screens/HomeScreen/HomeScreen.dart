import 'package:flutter/material.dart';
import 'package:travel_application/Feature/Model/HotelHomeClass.dart';
import 'package:travel_application/Feature/View/Screens/HomeScreen/WidgetsHomeScreen.dart';
import 'package:travel_application/Feature/View/WidgetsGlobal.dart';

import '../../../../Core/ColorsManager.dart';
import '../../../Model/CategoryHomeScreenClass.dart';

class HomeScreen extends StatelessWidget {
  List<Category> data = [
    Category("Hotels", "assets/images/hotels.png"),
    Category("Aircrafts", "assets/images/aircraft.png"),
    Category("Trains", "assets/images/train.png"),
    Category("Cars", "assets/images/car.png"),
    Category("Events", "assets/images/event.png"),
  ];
  List<Hotel> dataHotels = [
    Hotel(hotelImagePath: "assets/images/papandayan_1.png",hotelName:  "The Papandayan",
       hotelAddress:  "Bandung, Indonesia",hotelIRDNew:  680.343, hotelIRDOld:  680.500,discountPercentage:  24),
    Hotel(hotelImagePath: "assets/images/jambuluwukOceano.png",hotelName:  "Jambuluwuk Oceano",
        hotelAddress: "Seminyak, Indonesia",hotelIRDNew:  446.343,hotelIRDOld:  446.700,discountPercentage:  50),
    Hotel(hotelImagePath: "assets/images/papandayan_2.png",hotelName:  "The Papandayan",
      hotelAddress:   "Bandung, Indonesia",hotelIRDNew:  680.343,hotelIRDOld:  680.500,discountPercentage:  24),
  ];
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
                    fontcolor: ColorsManager.colorCategoriesHomeScreen,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.length,
                    itemBuilder: (ctx, index) {
                      return WidgetsHomeScreen.cardCategory(
                        context: context,
                        categoryImagePath: data[index].categoryImage,
                        categoryName: data[index].categoryName,
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
                        fontcolor: ColorsManager.colorSpecialForYouHomeScreen,
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
                          fontcolor: ColorsManager.colorViewAllHomeScreen,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 300,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dataHotels.length,
                    itemBuilder: (ctx, index) {
                      return WidgetsHomeScreen.cardHotels(
                        context: context,
                        hotelImagePath:  dataHotels[index].hotelImagePath,
                        hotelName: dataHotels[index].hotelName,
                        hotelAddress: dataHotels[index].hotelAddress,
                        hotelIRDNew: dataHotels[index].hotelIRDNew,
                        hotelIRDOld: dataHotels[index].hotelIRDOld,
                        discountPercentage: dataHotels[index].discountPercentage
                      );
                    },
                  ),
                ),
                SizedBox(height: 24,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
