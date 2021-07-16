import 'package:flutter/material.dart';

import '../../../constants.dart';

class EmailFormTextField extends StatelessWidget {
  const EmailFormTextField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, bottom: 15, left: 20, right: 20),
      height: 40,
      child: TextFormField(
        decoration: new InputDecoration(
            enabledBorder: new OutlineInputBorder(
              borderSide: const BorderSide(color: kBorderColor),
              borderRadius: const BorderRadius.all(
                const Radius.circular(40.0),
              ),
            ),
            filled: true,
            contentPadding: EdgeInsets.only(left: 10),
            hintStyle: new TextStyle(color: Colors.grey[500], fontSize: 13),
            hintText: "Enter email or username",
            fillColor: Colors.white70),
      ),
    );
  }
}
