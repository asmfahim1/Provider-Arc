import 'package:flutter/foundation.dart';


class CountProvider with ChangeNotifier{

  int _count = 1;
  int get count => _count;

  increment(){
    _count++ ;
    print ('Total count : $count');
    notifyListeners();
  }


}