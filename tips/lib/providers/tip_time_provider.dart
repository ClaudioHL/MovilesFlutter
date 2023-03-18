import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';

class TipTimeProvider with ChangeNotifier {
  bool isSelected = false;
  int? _selectedRadio = null;
  int? get getSelectedRadio => _selectedRadio;
  var costController = TextEditingController();
  var radioGroupValues = {
    0: "Amazing 20%",
    1: "Good 18%",
    2: "Okay 15%"
  };
  double tipAmount = 0.0;

  void tipCalculation(double dato) {
    double tip;
    if (_selectedRadio == 0){
      tip = dato * 1.2;
    }
    else if (_selectedRadio == 1){
      tip = dato * 1.18;
    }
    else{
      tip = dato * 1.15;
    } 
    if (isSelected == true){
      tip = tip.ceilToDouble();
    }
    tipAmount = tip;
    notifyListeners();
  }

  void setIsSelected(bool switchValue){
    isSelected = switchValue;
    notifyListeners();
  }
  void setSelectedRadio(int? radioValue){
    _selectedRadio = radioValue;
    notifyListeners();
  }

}