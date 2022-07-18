import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'Feature/Localizations/LocalizationsModel/AppLocale.dart';
import 'Feature/Providers/ProviderChangeStatus.dart';
import 'Feature/View/Screens/HomeScreen/HomeScreen.dart';


void main() {
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
    statusBarIconBrightness: Brightness.dark

  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => ProviderChangeStatus(),),
      ],
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            brightness: Brightness.light,
          ),
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            AppLocale.delegate
          ],
          supportedLocales: const [
            Locale("en", ""),
            Locale("ar", ""),
          ],
          localeResolutionCallback: (currentLang, supportLang) {
            if (currentLang != null) {
              for (Locale locale in supportLang) {
                if (locale.languageCode == currentLang.languageCode) {
                  return currentLang;
                }
              }
            } else {
              return supportLang.first;
            }
          },
          // locale: Locale("en", ""),
          home:   HomeScreen(),
        );
      },
    );
  }
}
