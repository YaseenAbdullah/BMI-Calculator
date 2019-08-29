import 'package:flutter/material.dart';
import 'constants.dart';

class ButtomButton extends StatelessWidget {
  ButtomButton({@required this.onTapp, @required this.theText});
  final Function onTapp;
  final String theText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapp,
      child: Container(
        child: Center(
          child: Text(
            theText,
            style:
                TextStyle(color: Colors.white, fontSize: 22, letterSpacing: 2),
          ),
        ),
        margin: EdgeInsets.only(top: 5),
        height: buttomContainerHeight,
        width: double.infinity,
        color: buttomCardColor,
      ),
    );
  }
}
