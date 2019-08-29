import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'buttombutton.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.number});

  String getResult() {
    if (number > 25.0) {
      return 'overwight';
    } else if (number > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getAdvice() {
    if (number > 25.0) {
      return 'you have a higher than normal body weight,try to exercise more';
    } else if (number >= 18.5) {
      return 'you have a normal body weight!, good job';
    } else {
      return 'you have lower than normal body weight, you can eat a bit more!';
    }
  }

  final double number;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'YOUR RESULT',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReUseableCard(
                colour: activeCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      getResult(),
                      style: resultsTopText,
                    ),
                    Text(
                      number.toStringAsFixed(1),
                      style: TextStyle(color: Colors.white, fontSize: 100.0),
                    ),
                    Text(
                      getAdvice(),
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                    ButtomButton(
                        onTapp: () {
                          Navigator.pop(context);
                        },
                        theText: 'RE-CALCULATE')
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
