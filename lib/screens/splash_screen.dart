import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    const delay = const Duration(seconds: 3);
    Future.delayed(delay, () => onTimerFinished());
  }

  void onTimerFinished() {
    Navigator.of(context).pushReplacement(new MaterialPageRoute(
      builder: (BuildContext context) {
        return WelcomeScreen();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: ColorFiltered(
        colorFilter: ColorFilter.mode(
          Colors.grey, // Gri tonlaması, kontrastı artırır
          BlendMode.colorBurn,
        ),
        child: Container(
            foregroundDecoration: BoxDecoration(
          image: DecorationImage(
            image: splashScreenIcon(),
            fit: BoxFit.cover,
          ),
        )),
      ),
    );
  }
}

AssetImage splashScreenIcon() {
  String iconPath = "assets/images/app_icon_splash.png";
  return AssetImage(iconPath);
}
