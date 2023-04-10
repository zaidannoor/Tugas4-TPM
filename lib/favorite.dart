import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  List<String> _names = [];
  List<String> _links = [];
  List<String> get links => _links;
  List<String> get names => _names;

  void toggleFavorite(String name, String link) {
    final isExist = _names.contains(name);
    final isExist1 = _links.contains(link);
    if (isExist && isExist1) {
      _names.remove(name);
      _links.remove(link);
    } else {
      _names.add(name);
      _links.add(link);
    }
    notifyListeners();
  }

  bool isExist(String name) {
    final isExist = _names.contains(name);
    return isExist;
  }

  void cleanerFavorite() {
    _names = [];
    _links = [];
    notifyListeners();
  }
}
