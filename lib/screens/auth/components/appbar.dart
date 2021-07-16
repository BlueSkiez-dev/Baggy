import 'package:flutter/material.dart';

class AppbarImage extends StatelessWidget {
  const AppbarImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
        ),
        image: DecorationImage(
          image: AssetImage('assets/images/replace.png'),
          fit: BoxFit.fitWidth,
        ),
        shape: BoxShape.rectangle,
      ),
    );
  }
}
