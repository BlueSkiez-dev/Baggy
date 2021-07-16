import 'package:flutter/material.dart';

import '../../../constants.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/google.png',
                height: 30,
              ),
              Text(
                'Sign in with Google',
                style: TextStyle(color: kPrimaryColor),
              )
            ],
          ),
          style: OutlinedButton.styleFrom(
            shape: StadiumBorder(),
          ),
        ),
      ),
    );
  }
}
