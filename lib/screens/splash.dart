import 'package:baggy/constants.dart';
import 'package:flutter/material.dart';

import 'auth/auth_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => AuthScreen()),
            ));
    controller = AnimationController(
        duration: const Duration(milliseconds: 2000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: 450,
                  left: 250,
                  child: Image.asset(
                    'assets/images/bag2.png',
                    height: 200,
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          'Baggy',
                          style: TextStyle(fontSize: 34, color: kBlancColor),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,
                      colors: [
                        kPrimaryColor,
                        kPrimaryColor.withOpacity(.5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
