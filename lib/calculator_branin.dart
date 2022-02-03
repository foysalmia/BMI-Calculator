import 'dart:math';

class BmiBrain {
  BmiBrain({required this.weight, required this.height});
  final int weight;
  final int height;

  late double bmi;

  String getBmi() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 18) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String feedback() {
    if (bmi >= 25) {
      return 'You are Overweight. You should keep exercise and give up much eating.';
    } else if (bmi >= 18) {
      return 'Congratulations...!\nYou are in right stage.';
    } else {
      return 'You are in danger. You should eat more and more';
    }
  }
}
