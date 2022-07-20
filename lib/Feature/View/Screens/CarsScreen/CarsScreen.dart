import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:travel_application/Core/ColorsManager.dart';
import 'package:travel_application/Feature/Providers/ProviderChangeStatus.dart';
import '../../../DataList/DataList.dart';
import '../../WidgetsGlobal.dart';

class CarScreen extends StatelessWidget {
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    var providerController = Provider.of<ProviderChangeStatus>(context);
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
        title: Text("Car"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.1,
                  child: PageView(
                    controller: pageController,
                    onPageChanged: (index) {
                      providerController.changeIndexPageViewCarScreen(index);
                    },
                    children: [
                      ...List.generate(
                        DataList.dataCars.length,
                            (index) {
                          return WidgetsGlobal.category_Information_Card(
                              context: context, index: index,data: DataList.dataCars,type:"car");
                        },
                      ),
                    ],
                  ),
                ),
                PositionedDirectional(
                  top: MediaQuery.of(context).size.height / 3.2,
                  end: MediaQuery.of(context).size.width / 2.5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ...List.generate(DataList.dataCars.length, (index) {
                        return WidgetsGlobal.IndicatorPageView(
                            isActive:
                            providerController.indexPageViewCarScreen ==
                                index);
                      }),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WidgetsGlobal.customText(
                      context: context,
                      text: "Description",
                      fontSize: 16,
                      fontcolor: ColorsManager.colorsManager.blankColor_121212,
                      fontWeight: FontWeight.w700),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: WidgetsGlobal.customText(
                            context: context,
                            text: "Properties",
                            fontSize: 16,
                            fontcolor:
                            ColorsManager.colorsManager.blankColor_121212,
                            fontWeight: FontWeight.w400),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                       ...List.generate(DataList.dataCars[providerController.indexPageViewCarScreen].propertiesList.length, (index){
                         return WidgetsGlobal.customText(
                             context: context,
                             text:
                             "${DataList.dataCars[providerController.indexPageViewCarScreen].propertiesList[index]}",
                             fontSize: 14,
                             fontcolor:
                             ColorsManager.colorsManager.grayColor_7E7E7E,
                             fontWeight: FontWeight.w300);
                       }),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  WidgetsGlobal.customText(
                      context: context,
                      text:
                      "${DataList.dataCars[providerController.indexPageViewCarScreen].desc}",
                      fontSize: 14,
                      fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                      fontWeight: FontWeight.w400),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(
                  start: 16, end: 16, bottom: 24),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      WidgetsGlobal.customText(
                          context: context,
                          text: "Review",
                          fontSize: 14,
                          fontcolor:
                          ColorsManager.colorsManager.blankColor_121212,
                          fontWeight: FontWeight.w700),
                      WidgetsGlobal.customText(
                          context: context,
                          text: "View All",
                          fontSize: 14,
                          fontcolor:
                          ColorsManager.colorsManager.primaryColor_2277FE,
                          fontWeight: FontWeight.w700),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      WidgetsGlobal.getRating(),
                      const SizedBox(
                        width: 8,
                      ),
                      WidgetsGlobal.customText(
                          context: context,
                          text: "4.5 (5 Review)",
                          fontSize: 10,
                          fontcolor:
                          ColorsManager.colorsManager.grayColor_7E7E7E,
                          fontWeight: FontWeight.w400),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/profileImage.png",
                        width: 50,
                        height: 50,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          WidgetsGlobal.customText(
                              context: context,
                              text: "Muhammad Fadli",
                              fontSize: 14,
                              fontcolor:
                              ColorsManager.colorsManager.blankColor_121212,
                              fontWeight: FontWeight.w700),
                          WidgetsGlobal.getRating(),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  WidgetsGlobal.customText(
                      context: context,
                      text:
                      "All the facilities are okay and the service is good, it's just that the car parking is very limited, but it's okay because it can be tried. worth to staycation",
                      fontSize: 12,
                      fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                      fontWeight: FontWeight.w400),
                  Row(
                    children: [
                      ...List.generate(3, (index) {
                        return Container(
                            margin: const EdgeInsetsDirectional.only(
                                bottom: 16, top: 16, end: 16),
                            child: Image.asset(
                              DataList.imagesPathCarScreen[index],
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ));
                      }),
                    ],
                  ),
                  WidgetsGlobal.customText(
                      context: context,
                      text: "May 02, 2021",
                      fontSize: 10,
                      fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                      fontWeight: FontWeight.w400),
                  const SizedBox(
                    height: 24,
                  ),
                  WidgetsGlobal.getColumnCarInformationTeavel(
                      context: context,
                      text_1: "Exciting road trip",
                      text_2:
                      "Now, you can rent a keyless car in order to take a stroll at your vacation !"),
                  WidgetsGlobal.getListViewCars(context: context),
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
                        WidgetsGlobal.myButton(context: context, text: "rent", function: (){}),
                      ],
                    ),
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
