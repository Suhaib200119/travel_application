import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_application/Core/ColorsManager.dart';
import 'package:travel_application/Feature/Model/PageViewClass.dart';
import 'package:travel_application/Feature/View/Screens/IntroductionScreen/WidgetIntroductionScreen.dart';
import 'package:travel_application/Feature/View/WidgetsGlobal.dart';
import '../../../Localizations/LocalizationsModel/AppLocale.dart';
import '../../../Providers/ProviderChangeStatus.dart';
import '../../WidgetsGlobal/Indicator.dart';
import '../LoginScreen/LoginScreen.dart';

class IntroductionScreen extends StatelessWidget {
  List<PageViewClass> data = [
    PageViewClass("assets/images/pageViewImage_1.png", "Hi, Welcome",
        "In the Travel app you can order planes,Hotel, Train, event searchto Car Rental"),
    PageViewClass("assets/images/pageViewImage_2.png", "Easier to Travel",
        "With various features available for you in the travel app, your vacation or trip will be easier and more comfortable"),
    PageViewClass("assets/images/pageViewImage_3.png", "Many New Features",
        "Now the Travel app has many new features and a new look, you can try it"),
  ];
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    var providerController = Provider.of<ProviderChangeStatus>(context);
    return Scaffold(
      backgroundColor: ColorsManager.colorsManager.whiteColor,
      body: Container(
        margin: const EdgeInsetsDirectional.only(top: 64),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.6,
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  providerController.changeIndexPageView(index);
                },
                children: [
                  WidgetsIntroductionScreen.CardPageView(
                    context: context,
                    imagePath: data[0].imagePath.toString(),
                    tilte: getLang(context, data[0].title.toString()),
                    subTitle: getLang(context, data[0].subtitle.toString()),
                  ),
                  WidgetsIntroductionScreen.CardPageView(
                    context: context,
                    imagePath: data[1].imagePath.toString(),
                    tilte: getLang(context, data[1].title.toString()),
                    subTitle: getLang(context, data[1].subtitle.toString()),
                  ),
                  WidgetsIntroductionScreen.CardPageView(
                    context: context,
                    imagePath: data[2].imagePath.toString(),
                    tilte: getLang(context, data[2].title.toString()),
                    subTitle: getLang(context, data[2].subtitle.toString()),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(data.length, (index) {
                  return Indicator.IndicatorPageView(
                      isActive: providerController.indexPageView == index);
                }),
              ],
            ),
            const Spacer(),
            if (providerController.indexPageView != 2)
              WidgetsIntroductionScreen.containerPageViewLessThan2(
                context: context,
                skipText: "Skip",
                nextText: "Next",
                function_skip: () {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (ctx) {
                    return LoginScreen();
                  }));
                },
                function_next: () {
                  pageController.nextPage(duration:Duration(seconds: 1), curve: Curves.easeOut);
                },
              )
            else
              WidgetsIntroductionScreen.containerPageView3(
                  context: context,
                  startText: "Start",
                  function_start: () {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (ctx) {
                      return LoginScreen();
                    }));
                  })
          ],
        ),
      ),
    );
  }
}
