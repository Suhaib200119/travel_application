import 'package:flutter/material.dart';
import 'package:travel_application/Core/ColorsManager.dart';
import 'package:travel_application/Feature/Localizations/LocalizationsModel/AppLocale.dart';
import 'package:travel_application/Feature/View/Screens/LoginScreen/WidgetLoginScreen.dart';
import 'package:travel_application/Feature/View/WidgetsGlobal.dart';

class LoginScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  TextEditingController tec_email = TextEditingController();
  TextEditingController tec_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsetsDirectional.only(
              start: 16,
              end: 15,
              top: 112,
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logoLoginScreen.png",
                  width: 72,
                  height: 72,
                ),
                const SizedBox(
                  height: 16,
                ),
                WidgetsLoginScreen.customText(
                  context: context,
                  text: "Welcome to Travel App",
                  fontSize: 16,
                  fontcolor: ColorsManager.colorTextHreaderLoginScreen,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 8,
                ),
                WidgetsLoginScreen.customText(
                  context: context,
                  text: "Sign in to continue",
                  fontSize: 12,
                  fontcolor: ColorsManager.colorSubTitleLoginScreen,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 16,
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: tec_email,
                        keyboardType: TextInputType.emailAddress,
                        validator: (inputUser) {
                          if (inputUser!.trim().isEmpty) {
                            return "${getLang(context, "you must enter the email")}";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email_outlined),
                          hintText: "${getLang(context, "Enter Email")}",
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 20, color: Color(0xFFEBF0FF))),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorsManager
                                  .borderColorTextFormFieldLoginScreen,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        controller: tec_password,
                        keyboardType: TextInputType.emailAddress,
                        validator: (inputUser) {
                          if (inputUser!.trim().isEmpty) {
                            return "${getLang(context, "you must enter the password")}";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock_outline),
                          hintText: "${getLang(context, "Enter Password")}",
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 20,
                              color: Color(0xFFEBF0FF),
                            ),
                          ),
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ColorsManager
                                  .borderColorTextFormFieldLoginScreen,
                            ),
                          ),
                        ),
                      ),
                      WidgetsGlobal.myButton(
                        context: context,
                        text: "sign in",
                        function: () {},
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
                  function: () {},),
                const SizedBox(
                  height: 8,
                ),
                WidgetsLoginScreen.ContainerSites(
                  context: context,
                  text: "Sign in with Facebook",
                  imageName: "facebook .png",
                  function: () {},),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
