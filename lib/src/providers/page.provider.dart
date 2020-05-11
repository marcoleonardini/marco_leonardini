import 'package:flutter/foundation.dart';

class PageProvider extends ChangeNotifier {
  int _itemSelected = 1;

  int get itemSelected => _itemSelected;

  set itemSelected(int newItem) {
    _itemSelected = newItem;
    notifyListeners();
  }
}
