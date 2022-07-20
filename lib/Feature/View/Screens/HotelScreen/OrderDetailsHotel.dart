import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_application/Feature/DataList/DataList.dart';
import 'package:travel_application/Feature/View/Screens/HotelScreen/WidgetsHotelScreen.dart';
import 'package:travel_application/Feature/View/WidgetsGlobal.dart';
import '../../../../Core/ColorsManager.dart';

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
                  imagePath: DataList.dataHotels[index].imagePath,
                  nameItem: DataList.dataHotels[index].name,
                  note: DataList.dataHotels[index].note,
                  numberLike: DataList.dataHotels[index].like,
                  Check_in: DataList.dataHotels[index].check_in,
                  Check_out: DataList.dataHotels[index].check_out),
              SizedBox(
                height: 24,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: ColorsManager.colorsManager.primaryColor_2277FE,
                      width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WidgetsGlobal.customText(
                        context: context,
                        text: "Mr Muhammad Fadli",
                        fontSize: 14,
                        fontcolor:
                            ColorsManager.colorsManager.blankColor_121212,
                        fontWeight: FontWeight.w700),
                    WidgetsGlobal.customText(
                        context: context,
                        text:
                            "Merpati Sakti Street, Panam Pekanbaru, Riau Indonesia",
                        fontSize: 12,
                        fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                        fontWeight: FontWeight.w400),
                    WidgetsGlobal.customText(
                        context: context,
                        text: "+89484900200393",
                        fontSize: 12,
                        fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                        fontWeight: FontWeight.w400),
                    Row(
                      children: [
                        MaterialButton(
                          onPressed: () {},
                          child: WidgetsGlobal.customText(
                              context: context,
                              text: "Edit",
                              fontSize: 14,
                              fontcolor: ColorsManager.colorsManager.whiteColor,
                              fontWeight: FontWeight.w700),
                          color: ColorsManager.colorsManager.primaryColor_2277FE,
                          height: 48,
                        ),
                        IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: ColorsManager.colorsManager.grayColor_7E7E7E,)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24,),
              WidgetsGlobal.customText(
                  context: context,
                  text: "Special request",
                  fontSize: 14,
                  fontcolor:
                  ColorsManager.colorsManager.blankColor_121212,
                  fontWeight: FontWeight.w700),
              SizedBox(height: 16,),

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
                    IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: ColorsManager.colorsManager.primaryColor_2277FE,)),

                  ],
                ),
              ),
              SizedBox(height: 16,),

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
                            fontcolor: ColorsManager
                                .colorsManager.grayColor_7E7E7E,
                            fontWeight: FontWeight.w400),
                        WidgetsGlobal.customText(
                            context: context,
                            text: "IDR 680.343",
                            fontSize: 16,
                            fontcolor: ColorsManager
                                .colorsManager.primaryColor_2277FE,
                            fontWeight: FontWeight.w700),
                      ],
                    ),
                    WidgetsGlobal.myButton(context: context, text: "Continue Payment", function: (){}),
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
