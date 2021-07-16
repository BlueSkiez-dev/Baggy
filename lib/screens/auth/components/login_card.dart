import 'package:baggy/screens/auth/components/email_form.dart';
import 'package:baggy/screens/auth/components/primary_btn.dart';
import 'package:baggy/screens/auth/components/passkey_form.dart';
import 'package:baggy/screens/auth/components/secondary_btn.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              'Login',
              style: TextStyle(
                  fontSize: 18,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          EmailFormTextField(),
          PasskeyFormTextField(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password?',
                  style: TextStyle(fontSize: 12, color: kPrimaryColor),
                ),
              ],
            ),
          ),
          PrimaryButton(),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: Text(
              'Or',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ),
          SecondaryButton(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(color: Colors.grey[500], fontSize: 12),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Sign up',
                  style: TextStyle(color: kPrimaryColor, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
      height: 420,
      decoration: BoxDecoration(
        color: kBlancColor,
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
