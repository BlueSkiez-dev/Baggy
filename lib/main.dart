import 'package:baggy/screens/home/home.dart';
import 'package:flutter/material.dart';

import 'screens/auth/auth_screen.dart';
import 'screens/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Quicksand'),
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        AuthScreen.id: (context) => AuthScreen(),
        HomeScreen.id: (context) => HomeScreen(),
      },
    );
  }
}
