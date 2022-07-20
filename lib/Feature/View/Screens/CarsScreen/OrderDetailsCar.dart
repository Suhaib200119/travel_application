import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../Core/ColorsManager.dart';
import '../../../DataList/DataList.dart';
import '../../WidgetsGlobal.dart';
import '../../WidgetsGlobal/CustomrInformationOrderScreen.dart';
import '../../WidgetsGlobal/MyButton.dart';
import 'WidgetsCarScreen.dart';

class OrderDetailsCar extends StatelessWidget {
  String? type;
  late int index;

  OrderDetailsCar(this.type, this.index, {Key? key}) : super(key: key);

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
        title: const Text("Order Details"),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WidgetCarScreen.getContainerDetails(
                context: context,
                imagePath: DataList.dataCars[index].ImagePath,
                nameItem: DataList.dataCars[index].categoryName,
                borrowing: DataList.dataCars[index].borrowing,
                delivery: DataList.dataCars[index].delivery,
                people: DataList.dataCars[index].people,
              ),
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
              const SizedBox(
                height: 16,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: ColorsManager.colorsManager.primaryColor_2277FE,
                      width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child:   WidgetsGlobal.customText(
                    context: context,
                    text: "Choose Pick Up Location",
                    fontSize: 14,
                    fontcolor:
                    ColorsManager.colorsManager.primaryColor_2277FE,
                    fontWeight: FontWeight.w700),

              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
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
