import 'dart:svg';

import 'package:flutter_web/material.dart';

class Attributes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 200.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/gallery/cover.jpg"),
          )),
      // margin: EdgeInsets.all(50.0),
    );
  }
}
