import 'package:flutter/material.dart';
import 'package:iron_shop_ui/screens/onboarding.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), openOnBoard);
  }

  void openOnBoard(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Onboarding()),);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/bg.png'),
          ),
        ),
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/logo.png'),
              )
            ),
          ),
        ),
      ),
    );
  }
}
