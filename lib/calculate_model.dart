import 'dart:math';

class CalculateModel {
  CalculateModel({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI(){
    _bmi = weight/pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>25)
      return 'Overweight';
    else if(_bmi>18.5 && _bmi<=24.9)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterp(){
    if(_bmi>25)
      return 'You have a higher than normal body weight, maybe exercise more :)';
    else if(_bmi>18.5 && _bmi<=24.9)
      return 'You have a normal body weight, stay the same ;)';
    else
      return 'You have a lower than normal body weight, eat more :P';
  }
}
