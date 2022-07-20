import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_application/Feature/DataList/DataList.dart';
import 'package:travel_application/Feature/View/Screens/HotelScreen/WidgetsHotelScreen.dart';
import 'package:travel_application/Feature/View/WidgetsGlobal.dart';
import 'package:travel_application/Feature/View/WidgetsGlobal/CustomrInformationOrderScreen.dart';
import '../../../../Core/ColorsManager.dart';
import '../../WidgetsGlobal/MyButton.dart';

class OrderDetailsHotel extends StatelessWidget {
  String? type;
  late int index;

  OrderDetailsHotel(this.type, this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: ColorsManager.colorsManager.primaryColor_2277FE,
            statusBarIconBrightness: Brightness.light),
        backgroundColor: ColorsManager.colorsManager.primaryColor_2277FE,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text("Order Details"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WidgetsHotelScreen.getContainerDetails(
                  context: context,
                  imagePath: DataList.dataHotels[index].ImagePath,
                  nameItem: DataList.dataHotels[index].categoryName,
                  note: DataList.dataHotels[index].noteOnHotel,
                  numberLike: DataList.dataHotels[index].numberOfLike,
                  Check_in: DataList.dataHotels[index].checkIn,
                  Check_out: DataList.dataHotels[index].checkOut),
              const SizedBox(
                height: 24,
              ),
              CustomrInformationOrderScreen.getItem(
                  context: context,
                  customrName: "Mr Muhammad Fadli",
                  customrAddress:
                      "Merpati Sakti Street, Panam Pekanbaru, Riau Indonesia",
                  customrPhoneNumber: "+89484900200393",
                  function: () {}),
              const SizedBox(
                height: 24,
              ),
              WidgetsGlobal.customText(
                  context: context,
                  text: "Special request",
                  fontSize: 14,
                  fontcolor: ColorsManager.colorsManager.blankColor_121212,
                  fontWeight: FontWeight.w700),
              SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: ColorsManager.colorsManager.primaryColor_2277FE,
                      width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WidgetsGlobal.customText(
                        context: context,
                        text: "Add Special Request",
                        fontSize: 14,
                        fontcolor:
                            ColorsManager.colorsManager.primaryColor_2277FE,
                        fontWeight: FontWeight.w700),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color:
                              ColorsManager.colorsManager.primaryColor_2277FE,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        WidgetsGlobal.customText(
                            context: context,
                            text: "Starting from",
                            fontSize: 12,
                            fontcolor:
                                ColorsManager.colorsManager.grayColor_7E7E7E,
                            fontWeight: FontWeight.w400),
                        WidgetsGlobal.customText(
                            context: context,
                            text: "IDR 680.343",
                            fontSize: 16,
                            fontcolor:
                                ColorsManager.colorsManager.primaryColor_2277FE,
                            fontWeight: FontWeight.w700),
                      ],
                    ),
                    MyButton.getItem(
                        context: context,
                        text: "Continue Payment",
                        function: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
