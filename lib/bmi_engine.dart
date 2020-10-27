import 'dart:math';

class BMIEngine {
  BMIEngine({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    print("your bmi is $_bmi");
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'overweight';
    } else if (_bmi > 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'motey kam kha. aur exercise bhi kar.';
    } else if (_bmi > 18.5) {
      return 'theek hai weight. aur exercise karte reh.';
    } else {
      return 'sukkhhad, thoda zada kha. aur thoda exercise karte reh.';
    }
  }
}
