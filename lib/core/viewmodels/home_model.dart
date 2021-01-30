import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeModel extends ChangeNotifier {
  bool _isVisible = false;
  bool _isValid = false;

  get isVisible => _isVisible;

  set isVisible(value) {
    _isVisible = value;
    notifyListeners();
  }

  get isValid => _isValid;

  void isValidEmail(String email) {
    RegExp emailRegExp = new RegExp(
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

    _isValid = emailRegExp.hasMatch(email);

    notifyListeners();
  }
}
