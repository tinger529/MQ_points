import 'dart:collection';

import 'package:flutter/foundation.dart';

class StateModel extends ChangeNotifier {
  
  String _status = "start";   // quiz status flag
  int points = 100;

  StateModel() {
    _status = "start";
    // set to login after 5 seconds
    Future.delayed(const Duration(seconds: 3), () {
      _status = "login";
      notifyListeners();
    });
  }

  String get pageStatus => _status;

  int get currentPoints => points;

  void redirectLogin() {
    _status = "login";
  }

  void redirectHome() {
    _status = "home";
    notifyListeners();
  }

  void redirectRedemption() {
    _status = "redemption";
    notifyListeners();
  }

  void redirectItem() {
    _status = "item";
    notifyListeners();
  }

  void redirectEvent() {
    _status = "event";
    notifyListeners();
  }
}