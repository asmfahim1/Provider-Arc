import 'package:flutter/foundation.dart';


class ExampleOneProvider with ChangeNotifier{

  int _count = 1;
  int get count => _count;


  double _value = 1.0;
  double get value => _value;

  void setValue(double val){
    _value = val;
    print ('Total count : $value');
    notifyListeners();
  }


}