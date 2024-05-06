import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:mqpoint/models/voucher_model.dart';

class StateModel extends ChangeNotifier {
  
  String _status = "start";

  // temporarily store user's data here
  int points = 100;
  int nvouchers = 2; 
  List<Voucher> vouchers = [
    const Voucher("      Coffee 50% off coupon", 100, "This is a voucher"),
  //  const Voucher("      Coffee 50% off coupon", 100, "This is a voucher"),
  ];

  StateModel() {
    _status = "start";
    // set to login after 5 seconds
    Future.delayed(const Duration(seconds: 3), () {
      _status = "login";
      notifyListeners();
    });
  }

  String get pageStatus => _status;

  List<Voucher> get currentVouchers => UnmodifiableListView(vouchers);

  int get currentPoints => points;

  void login(String id, String passwd) {
    if (id != "" && passwd != "") {
      _status = "home";
      notifyListeners();
    }
  }

  void redirect(String page){
    _status = page;
    notifyListeners();
  }

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