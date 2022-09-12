import 'package:flutter/material.dart';

class Body {
  num? height;
  num? weight;

  static Map message = {
    'Normal': 'You have a normal body weight.\nGood job',
    'Underweight': 'You have a Underweight body weight.\nEat some food',
    'Overweight': 'You have a Overweight body weight.\nGo to Gym',
  };
bmi(height, weight)=>((weight!*10000) / (height! * height!)).round();
  bmiMessage(height, weight) {
    double bmi = (weight!*10000) / (height! * height!);
    if (bmi < 18.5)
      return message[1];
    else if (bmi >= 18.5 || bmi <= 24.9)
      return message[0];
    else
      return message[2];
  }

  bmiColor(height, weight) {
    double bmi = (weight!*10000) / (height! * height!);

     if (bmi >= 18.5 || bmi <= 24.9)
      return Colors.green;
    else
      return Colors.red;
  }
  bmiAdvice(height, weight) {
    double bmi = (weight!*10000) / (height! * height!);
    if (bmi < 18.5)
      return message['Underweight'];
    else if (bmi >= 18.5 || bmi <= 24.9)
      return message['Normal'];
    else
      return message['Overweight'];
  }
}
