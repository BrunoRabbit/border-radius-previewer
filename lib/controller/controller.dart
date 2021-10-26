import 'package:flutter/material.dart';

class Controller extends ChangeNotifier {
  double topRightRadius = 0;
  double topLeftRadius = 100;
  double bottomLeftRadius = 100;
  double bottomRightRadius = 100;

  bool didWidgetUpdate = false;

  void setTopRight(double newValue) {
    topRightRadius = newValue;

    notifyListeners();
  }

  void setTopLeft(double newValue) {
    topLeftRadius = newValue;

    notifyListeners();
  }

  void setBottomRight(double newValue) {
    bottomRightRadius = newValue;

    notifyListeners();
  }

  void setBottomLeft(double newValue) {
    bottomLeftRadius = newValue;

    notifyListeners();
  }
}
