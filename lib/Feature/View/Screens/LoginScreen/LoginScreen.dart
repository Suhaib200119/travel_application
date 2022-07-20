import 'package:flutter/material.dart';
import 'package:travel_application/Core/ColorsManager.dart';
import 'package:travel_application/Feature/Localizations/LocalizationsModel/AppLocale.dart';
import 'package:travel_application/Feature/View/Screens/LoginScreen/WidgetLoginScreen.dart';
import 'package:travel_application/Feature/View/WidgetsGlobal.dart';

import '../../LayoutApp.dart';
import '../../WidgetsGlobal/ImageLogoWidget.dart';
import '../../WidgetsGlobal/MyButton.dart';
import '../SignUpScreen/SignUpScreen.dart';

class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  TextEditingController tec_email = TextEditingController();
  TextEditingController tec_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsetsDirectional.only(
              start: 16,
              end: 15,
              top: 40,
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageLogoWidget.imageLogo(),
                const SizedBox(
                  height: 16,
                ),
                WidgetsGlobal.customText(
                  context: context,
                  text: "Welcome to Travel App",
                  fontSize: 16,
                  fontcolor: ColorsManager.colorsManager.blankColor_121212,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 8,
                ),
                WidgetsGlobal.customText(
                  context: context,
                  text: "Sign in to continue",
                  fontSize: 12,
                  fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 16,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      WidgetsGlobal.myTextFormField(
                          context: context,
                          controller: tec_email,
                          keyboardType: TextInputType.emailAddress,
                          errorMessage: "You must enter the email",
                          prefixIcon: Icon(Icons.email_outlined),
                          hintText: "Enter Email",
                        isEmail: true,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      WidgetsGlobal.myTextFormField(
                          context: context,
                          controller: tec_password,
                          keyboardType: TextInputType.visiblePassword,
                          errorMessage: "You must enter the password",
                          prefixIcon: const Icon(Icons.lock_outline),
                          hintText: "Enter Password"),
                      MyButton.getItem(
                        context: context,
                        text: "sign in",
                        function: () {
                          if (formKey.currentState!.validate()) {
                            print("email: ${tec_email.text.trim()}\n");
                            print("password: ${tec_password.text.trim()}\n");
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (ctx) {
                              return LayoutApp();
                            }));
                          }
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    WidgetsLoginScreen.myDivider(),
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "${getLang(context, "OR")}",
                          style: const TextStyle(
                              color: Color(0xFF7E7E7E),
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    WidgetsLoginScreen.myDivider(),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                WidgetsLoginScreen.ContainerSites(
                  context: context,
                  text: "Sign in with Google",
                  imageName: "google.png",
                  function: () {},
                ),
                const SizedBox(
                  height: 8,
                ),
                WidgetsLoginScreen.ContainerSites(
                  context: context,
                  text: "Sign in with Facebook",
                  imageName: "facebook .png",
                  function: () {},
                ),
                const SizedBox(
                  height: 8,
                ),
                TextButton(
                  onPressed: () {},
                  child: WidgetsGlobal.customText(
                      context: context,
                      text: "Forgot the password",
                      fontSize: 12,
                      fontcolor:
                      ColorsManager.colorsManager.primaryColor_2277FE,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    const Spacer(),
                    WidgetsGlobal.customText(
                        context: context,
                        text: "Don't have an account yet?",
                        fontSize: 12,
                        fontcolor:
                        ColorsManager.colorsManager.primaryColor_2277FE,
                        fontWeight: FontWeight.w700),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return SignUpScreen();
                        }));
                      },
                      child: WidgetsGlobal.customText(
                          context: context,
                          text: "Create account",
                          fontSize: 12,
                          fontcolor: ColorsManager.colorsManager.grayColor_7E7E7E,
                          fontWeight: FontWeight.w700),
                    ),
                    const Spacer(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
