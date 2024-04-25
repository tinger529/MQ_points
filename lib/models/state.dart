import 'dart:collection';

import 'package:flutter/foundation.dart';

class StateModel extends ChangeNotifier {
  
  String _status = "start";   // quiz status flag

  String get quizStatus => _status;

  void redirectLogin() {
    _status = "login";
  }

  void redirectHome() {
    _status = "main";
    notifyListeners();
  }
  
}