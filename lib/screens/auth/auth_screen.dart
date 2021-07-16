import 'package:baggy/screens/auth/components/appbar.dart';
import 'package:baggy/screens/auth/components/login_card.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class AuthScreen extends StatelessWidget {
  static const String id = 'auth_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [Container()],
                  ),
                  decoration: BoxDecoration(color: kBcgColor),
                ),
                Positioned(
                  child: AppbarImage(),
                ),
                Positioned(
                  top: 480,
                  left: 250,
                  child: Opacity(
                    opacity: .3,
                    child: Image.asset(
                      'assets/images/bag1.png',
                      height: 200,
                    ),
                  ),
                ),
                Positioned(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      LoginContainer(),
                    ],
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
