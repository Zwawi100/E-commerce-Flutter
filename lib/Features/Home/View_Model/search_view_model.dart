import 'package:flutter/material.dart';

class SearchViewModel extends ChangeNotifier {
  bool isSearching = false;

  void showSearch() {
    isSearching = !isSearching;
    notifyListeners();
  }
}
