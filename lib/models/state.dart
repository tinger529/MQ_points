import 'dart:collection';

import 'package:flutter/foundation.dart';

class StateModel extends ChangeNotifier {
  
  String _status = "start";   // quiz status flag

  StateModel() {
    _status = "start";
    // set to login after 5 seconds
    Future.delayed(Duration(seconds: 3), () {
      _status = "login";
      notifyListeners();
    });
  }

  String get pageStatus => _status;

  void redirectLogin() {
    _status = "login";
  }

  void redirectHome() {
    _status = "home";
    notifyListeners();
  }

  
}