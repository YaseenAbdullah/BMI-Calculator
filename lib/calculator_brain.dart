import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  double calculateBMI() {
    return _bmi = weight / pow(height / 100, 2);
  }
}
