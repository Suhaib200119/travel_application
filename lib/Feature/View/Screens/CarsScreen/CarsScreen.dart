import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:travel_application/Core/ColorsManager.dart';
import 'package:travel_application/Feature/Providers/ProviderChangeStatus.dart';
import 'package:travel_application/Feature/View/WidgetsGlobal/SimpleTabBar.dart';
import '../../../DataList/DataList.dart';
import '../../WidgetsGlobal.dart';
import '../../WidgetsGlobal/ListViewCars.dart';
import '../../WidgetsGlobal/MyButton.dart';
import '../../WidgetsGlobal/ReviewContainer.dart';
import '../../WidgetsGlobal/ShowDetailesCategory_propertiesContainer.dart';
import '../../WidgetsGlobal/ShowDetailsCategory_pageView.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShowDetailsCategory_pageView.getItem(
              context: context,
              categoryList: DataList.dataCars,
              pageController: pageController,
              indexPageViewInProvider:
                  providerController.indexPageViewCarScreen,
              type: "car",
            ),
            ShowDetailesCategory_propertiesContainer.getItem(
                context: context,
                categoryList: DataList.dataCars,
                indexPageViewInProvider:
                    providerController.indexPageViewCarScreen),
            SimpleTabBar.getItem(
                context: context,
                indexPageViewProvider:
                providerController.indexPageViewCarScreen,
                categoryList: DataList.dataCars),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: DataList.dataReviewCars.length,
                itemBuilder: (ctx, index) {
                  return ReviewContainer.getItem(
                      context: context, review: DataList.dataReviewCars[index]);
                }),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  WidgetsGlobal.customText(
                      context: context,
                      text: "Exciting road trip",
                      fontSize: 14,
                      fontcolor: Color(0xFF121212),
                      fontWeight: FontWeight.w700),
                  WidgetsGlobal.customText(
                      context: context,
                      text:
                      "Now, you can rent a keyless car in order to take a stroll at your vacation !",
                      fontSize: 12,
                      fontcolor: Color(0xFF7E7E7E),
                      fontWeight: FontWeight.w400),
                ],
              ),
            ),
            ListViewCars.getItem(context: context),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
                      context: context, text: "rent", function: () {}),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
