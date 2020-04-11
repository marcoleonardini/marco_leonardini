import 'package:flutter/widgets.dart';

class PageProvider extends ChangeNotifier {
  int _itemSelected = 0;

  int get itemSelected => _itemSelected;

  set itemSelected(int newItem) {
    _itemSelected = newItem;
    notifyListeners();
  }
}
