import 'package:baggy/screens/home/home.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: SizedBox(
        width: double.infinity,
        child: ButtonTheme(
          buttonColor: kPrimaryColor,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.id);
            },
            child: Text(
              'Login',
              style: TextStyle(color: kBlancColor),
            ),
            style: ElevatedButton.styleFrom(
                shape: StadiumBorder(), primary: kPrimaryColor),
          ),
        ),
      ),
    );
  }
}
