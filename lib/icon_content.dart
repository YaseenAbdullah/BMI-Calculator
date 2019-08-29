import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.symbol, this.theText});
  final IconData symbol;
  final String theText;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          symbol,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          theText,
          style: textstyle,
        ),
      ],
    );
  }
}
