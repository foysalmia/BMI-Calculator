import 'dart:math';

class BmiBrain {
  final int weight;
  final int height;

  BmiBrain({required this.weight, required this.height});

  double _bmi = 12.0;
  String getBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String feedback() {
    if (_bmi >= 25) {
      return 'You are Overweight. You should keep exercise and give up much eating.';
    } else if (_bmi >= 18) {
      return 'Congratulations...!/nYou are in right stage.';
    } else {
      return 'You are in danger. You should eat more and more';
    }
  }
}
