import 'package:flutter/material.dart';

import '../../../../Core/ColorsManager.dart';
import '../../WidgetsGlobal.dart';
import '../LoginScreen/LoginScreen.dart';
import '../LoginScreen/WidgetLoginScreen.dart';

class SignUpScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  TextEditingController tec_full_name = TextEditingController();
  TextEditingController tec_email = TextEditingController();
  TextEditingController tec_password = TextEditingController();
  TextEditingController tec_repeat_asswsord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin:
                const EdgeInsetsDirectional.only(start: 16, end: 16, top: 48),
            child: Column(
              children: [
                WidgetsGlobal.imageLogo(),
                const SizedBox(
                  height: 16,
                ),
                WidgetsGlobal.customText(
                  context: context,
                  text: "Welcome to Travel App",
                  fontSize: 16,
                  fontcolor: ColorsManager.colorTextHeaderLoginScreen,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 8,
                ),
                WidgetsGlobal.customText(
                  context: context,
                  text: "Create a new account",
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
                      WidgetsGlobal.myTextFormField(
                          context: context,
                          controller: tec_full_name,
                          keyboardType: TextInputType.name,
                          errorMessage: "You must enter the full name",
                          prefixIcon: Icon(Icons.person),
                          hintText: "Enter full name"),
                      const SizedBox(
                        height: 8,
                      ),
                      WidgetsGlobal.myTextFormField(
                          context: context,
                          controller: tec_email,
                          keyboardType: TextInputType.emailAddress,
                          errorMessage: "You must enter the email",
                          prefixIcon: Icon(Icons.email_outlined),
                          hintText: "Enter Email"),
                      const SizedBox(
                        height: 8,
                      ),
                      WidgetsGlobal.myTextFormField(
                          context: context,
                          controller: tec_password,
                          keyboardType: TextInputType.visiblePassword,
                          errorMessage: "You must enter the password",
                          prefixIcon: Icon(Icons.lock_outline),
                          hintText: "Enter Password"),
                      const SizedBox(
                        height: 8,
                      ),
                      WidgetsGlobal.myTextFormField(
                          context: context,
                          controller: tec_repeat_asswsord,
                          keyboardType: TextInputType.visiblePassword,
                          errorMessage: "You must repeat the same password",
                          prefixIcon: Icon(Icons.lock_outline),
                          hintText: "Repeat Password"),

                      WidgetsGlobal.myButton(
                        context: context,
                        text: "Create",
                        function: () {
                          if (formKey.currentState!.validate()) {
                            print("full name: ${tec_full_name.text.trim()}\n");
                            print("email: ${tec_email.text.trim()}\n");
                            print("password: ${tec_password.text.trim()}\n");
                            print("password: ${tec_repeat_asswsord.text.trim()}\n");
                          }
                        },
                      ),
                      Row(
                        children: [
                          Spacer(),
                          WidgetsGlobal.customText(
                              context: context,
                              text: "do you have an account?",
                              fontSize: 12,
                              fontcolor:
                              ColorsManager.colorTextCreateAccountLoginScreen,
                              fontWeight: FontWeight.w700),
                          TextButton(
                            onPressed: () {
                             Navigator.pop(context);
                            },
                            child: WidgetsGlobal.customText(
                                context: context,
                                text: "click here",
                                fontSize: 12,
                                fontcolor: ColorsManager
                                    .colorTextDoNotHaveAccountLoginScreen,
                                fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
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
