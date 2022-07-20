import 'package:flutter/material.dart';
import 'package:travel_application/Feature/Localizations/LocalizationsModel/AppLocale.dart';
import '../../../../Core/ColorsManager.dart';
import '../../WidgetsGlobal.dart';
import '../../WidgetsGlobal/ImageLogoWidget.dart';
import '../../WidgetsGlobal/MyButton.dart';

class SignUpScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  TextEditingController tecFullName = TextEditingController();
  TextEditingController tecEmail = TextEditingController();
  TextEditingController tecPassword = TextEditingController();
  TextEditingController tecRepeatPassword = TextEditingController();

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin:
                const EdgeInsetsDirectional.only(start: 16, end: 16, top: 48),
            child: Column(
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
                  text: "Create a new account",
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
                          controller: tecFullName,
                          keyboardType: TextInputType.name,
                          errorMessage: "You must enter the full name",
                          prefixIcon: const Icon(Icons.person),
                          hintText: "Enter full name"),
                      const SizedBox(
                        height: 8,
                      ),
                      WidgetsGlobal.myTextFormField(
                          context: context,
                          controller: tecEmail,
                          keyboardType: TextInputType.emailAddress,
                          errorMessage: "You must enter the email",
                          prefixIcon: const Icon(Icons.email_outlined),
                          hintText: "Enter Email",
                          isEmail: true),
                      const SizedBox(
                        height: 8,
                      ),
                      WidgetsGlobal.myTextFormField(
                          context: context,
                          controller: tecPassword,
                          keyboardType: TextInputType.visiblePassword,
                          errorMessage: "You must enter the password",
                          prefixIcon: const Icon(Icons.lock_outline),
                          hintText: "Enter Password"),
                      const SizedBox(
                        height: 8,
                      ),
                      WidgetsGlobal.myTextFormField(
                          context: context,
                          controller: tecRepeatPassword,
                          keyboardType: TextInputType.visiblePassword,
                          errorMessage: "You must repeat the same password",
                          prefixIcon: const Icon(Icons.lock_outline),
                          hintText: "Repeat Password"),
                      MyButton.getItem(
                        context: context,
                        text: "Create",
                        function: () {
                          if (formKey.currentState!.validate()) {
                            if (tecPassword.text != tecRepeatPassword.text) {
                              showDialog(
                                  context: context,
                                  builder: (ctx) {
                                    return AlertDialog(
                                      title: Text(
                                          "${getLang(context, "The password and the password repeat must be the same")}"),
                                    );
                                  });
                            }
                          }
                        },
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          WidgetsGlobal.customText(
                              context: context,
                              text: "do you have an account?",
                              fontSize: 12,
                              fontcolor: ColorsManager.colorsManager.primaryColor_2277FE,
                              fontWeight: FontWeight.w700),
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: WidgetsGlobal.customText(
                                context: context,
                                text: "click here",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
