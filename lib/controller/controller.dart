import 'package:flutter/material.dart';



class BmiCont extends ChangeNotifier {
  double _height = 0;
  int _weight = 50;
  int _age = 0;
  bool _selectm = true;
  final bool _ispass = true;

  double get hight => _height;

  int get weight1 => _weight;

  int get age1 => _age;

  bool get sel => _selectm;

  bool get ispas => _ispass;

  ispassed(value) {
    if (_ispass == value) {
      _age = 0;
      _height = 0;
      _weight = 50;
      notifyListeners();
    } else {
      _age = _age;
      _height = _height;
      notifyListeners();
    }
  }

  selectedgender(String value) {
    if ('male' == value) {
      _selectm = true;
      notifyListeners();
    } else {
      _selectm = false;
      notifyListeners();
    }
  }

  selected() {
    if (_selectm == true) {
      _selectm = false;
      notifyListeners();
    } else {
      _selectm = true;
      notifyListeners();
    }
  }

  height(value) {
    _height = value;
    notifyListeners();
  }

  void addWeight() {
    _weight++;
    notifyListeners();
  }

  void subWeight() {
    _weight--;
    notifyListeners();
  }

  void addAge() {
    _age++;
    notifyListeners();
  }

  void subAge() {
    _age--;
    notifyListeners();
  }
}
