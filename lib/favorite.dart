import 'package:flutter/material.dart';

class FavoriteProvider extends ChangeNotifier {
  List<String> _images = [];
  List<String> _names = [];
  List<String> _links = [];
  List<String> get links => _links;
  List<String> get images => _images;
  List<String> get names => _names;

  void toggleFavorite(String name, String link, String imagee) {
    final isExist = _names.contains(name);
    final isExist2 = _images.contains(imagee);
    final isExist1 = _links.contains(link);
    if (isExist && isExist1) {
      _names.remove(name);
      _links.remove(link);
      _images.remove(imagee);
    } else {
      _names.add(name);
      _links.add(link);
      _images.add(imagee);
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
    _images = [];
    notifyListeners();
  }
}