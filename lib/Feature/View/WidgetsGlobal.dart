import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travel_application/Feature/Localizations/LocalizationsModel/AppLocale.dart';
import 'package:travel_application/Feature/View/Screens/CarsScreen/OrderDetailsCar.dart';
import 'package:travel_application/Feature/View/Screens/HotelScreen/OrderDetailsHotel.dart';
import '../../Core/ColorsManager.dart';
import '../DataList/DataList.dart';

class WidgetsGlobal {
  static Widget imageLogo() {
    return Image.asset(
      "assets/images/logoLoginScreen.png",
      width: 72,
      height: 72,
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
              ? ColorsManager.colorsManager.primaryColor_2277FE
              : ColorsManager.colorsManager.lightBlueColor_EBF0FF),
    );
  }

  static Widget myButton({
    required BuildContext context,
    required String text,

    double fontSize = 14,
    Color fontColor = Colors.white,
    FontWeight fontWeight = FontWeight.w700,
    required Function function,
  }) {
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 16),
      height: 64,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(5)),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          "${getLang(context, text)}",
          style: TextStyle(
              fontSize: fontSize, color: fontColor, fontWeight: fontWeight),
        ),
      ),
    );
  }

  static Widget myTextFormField({
    required BuildContext context,
    required TextEditingController controller,
    required TextInputType keyboardType,
    required String errorMessage,
    required Widget prefixIcon,
    required String hintText,
    bool isEmail = false,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      validator: (inputUser) {
        if (inputUser!.trim().isEmpty) {
          return "${getLang(context, errorMessage)}";
        } else {
          if (isEmail) {
            if (inputUser.contains("@") == false) {
              return "${getLang(context, "The email must contain the @ character.")}";
            } else if (inputUser.contains("gmail.") == false) {
              return "${getLang(context, "The email must contain the gmail word.")}";
            } else if (inputUser.endsWith(".com") == false) {
              return "${getLang(context, "Email must end with .com")}";
            } else {
              return null;
            }
          } else {
            return null;
          }
        }
      },
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        hintText: "${getLang(context, hintText)}",
        border: const OutlineInputBorder(
            borderSide: BorderSide(width: 20, color: Color(0xFFEBF0FF))),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorsManager.colorsManager.lightBlueColor_EBF0FF,
          ),
        ),
      ),
    );
  }

  static Widget customText({
    required BuildContext context,
    required String text,
    required double fontSize,
    required Color fontcolor,
    required FontWeight fontWeight,
  }) {
    return Text(
      "${getLang(context, text)}",
      style: TextStyle(
          fontSize: fontSize, color: fontcolor, fontWeight: fontWeight),
    );
  }

  static Widget getRating() {
    return RatingBar.builder(
      itemSize: 20,
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemPadding: EdgeInsets.symmetric(horizontal: 1),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }

  //cred for Hotel
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
                      fontcolor: ColorsManager.colorsManager.blankColor_121212,
                      fontWeight: FontWeight.w700),
                  //rating
                  WidgetsGlobal.getRating(),
                  WidgetsGlobal.customText(
                      context: context,
                      text: hotelAddress,
                      fontSize: 14,
                      fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                      fontWeight: FontWeight.w400),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "IRD $hotelIRDNew",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorsManager.colorsManager.primaryColor_2277FE,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "IRD $hotelIRDOld",
                        style: TextStyle(
                            fontSize: 14,
                            color: ColorsManager.colorsManager.grayColor_7E7E7E,
                            fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "$discountPercentage %Off",
                        style: TextStyle(
                            fontSize: 14,
                            color: ColorsManager
                                .colorsManager.redAccentColor_FB7181,
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

  static Widget getColumnCarInformationTeavel(
      {required BuildContext context,
      required String text_1,
      required String text_2}) {
    return Column(
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

  //Create listView to generate crad from cardCars
  static getListViewCars({
    required BuildContext context,
  }) {
    return Container(
      margin: const EdgeInsetsDirectional.only(top: 8, bottom: 8),
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: DataList.dataCarRent.length,
        itemBuilder: (ctx, index) {
          return WidgetsGlobal.cardCars(
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

  //cred for car in Home Screen and HotelScreen
  static Widget cardCars({
    required BuildContext context,
    required String carImagePath,
    required String description,
    required String address,
    required double ird,
  }) {
    return SizedBox(
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
                  carImagePath,
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
                      text: description,
                      fontSize: 16,
                      fontcolor: ColorsManager.colorsManager.blankColor_121212,
                      fontWeight: FontWeight.w700),
                  WidgetsGlobal.customText(
                      context: context,
                      text: address,
                      fontSize: 14,
                      fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                      fontWeight: FontWeight.w400),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "IRD $ird",
                    style: TextStyle(
                        fontSize: 14,
                        color: ColorsManager.colorsManager.primaryColor_2277FE,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Child in pageView Hotel Screen
  static category_Information_Card({
    required BuildContext context,
    required int index,
    required List<dynamic> data,
    required String type,
  }) {
    return Column(
      children: [
        Image.asset(
          data[index].imagePath,
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
                      text: data[index].name,
                      fontSize: 20,
                      fontcolor: ColorsManager.colorsManager.blankColor_121212,
                      fontWeight: FontWeight.w700),
                  IconButton(
                      onPressed: () {
                        if (type == "hotel") {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return OrderDetailsHotel(type, index);
                          }));
                        } else if (type == "car") {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (ctx) {
                            return OrderDetailsCar(type, index);
                          }));
                        }
                      },
                      icon: Icon(Icons.info_outline)),
                ],
              ),
              //rating
              WidgetsGlobal.getRating(),
              const SizedBox(
                height: 16,
              ),
              Text(
                "IRD ${data[index].irdNew}",
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
