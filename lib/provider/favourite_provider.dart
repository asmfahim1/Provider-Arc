import 'package:flutter/foundation.dart';


class FavouriteProvider with ChangeNotifier {

  List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;


  void addItems(int value){

    _selectedItem.add(value);

    notifyListeners();

    print('Selected Items : $selectedItem');

  }

  void removeItems(int value){

    _selectedItem.remove(value);

    print('Selected Items : $selectedItem');
    notifyListeners();


  }



}