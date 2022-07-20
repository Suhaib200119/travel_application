import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:travel_application/Feature/Providers/ProviderChangeStatus.dart';

import '../WidgetsGlobal.dart';
import 'Indicator.dart';
import 'ShowDetailesCategory_childPageView.dart';

class ShowDetailsCategory_pageView {
  static Widget getItem({
    required BuildContext context,
    required List<dynamic> categoryList,
    required PageController pageController,
    required int indexPageViewInProvider,
    required String type,
  }) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.1,
          child: PageView(
            controller: pageController,
            onPageChanged: (index) {
              if(type=="hotel"){
                Provider.of<ProviderChangeStatus>(context, listen: false)
                    .changeIndexPageViewHotelScreen(index);
              }else if(type=="car"){
                Provider.of<ProviderChangeStatus>(context, listen: false)
                    .changeIndexPageViewCarScreen(index);
              }

            },
            children: [
              ...List.generate(
                categoryList.length,
                (index) {
                  return ShowDetailesCategory_childPageView.getItem(
                      context: context,
                      indexItemInCategoryList: index,
                      categoryList: categoryList,
                      type: type);
                },
              ),
            ],
          ),
        ),
        PositionedDirectional(
          top: MediaQuery.of(context).size.height / 3.2,
          end: MediaQuery.of(context).size.width / 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(categoryList.length, (index) {
                return Indicator.IndicatorPageView(
                    isActive: indexPageViewInProvider == index);
              }
              ),
            ],
          ),
        ),
      ],
    );
  }
}
