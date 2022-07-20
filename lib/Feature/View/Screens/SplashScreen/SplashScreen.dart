import 'package:flutter/material.dart';
import 'package:travel_application/Core/ColorsManager.dart';
import '../IntroductionScreen/IntroductionScreen.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx){
        return IntroductionScreen();
      }));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: ColorsManager.colorsManager.primaryColor_2277FE,
        child: Center(
          child: Image.asset("assets/images/logoApp.png"),
        ),
      ),
    );
  }
}
