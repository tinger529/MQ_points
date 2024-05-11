import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:mqpoint/models/voucher_model.dart';

class StateModel extends ChangeNotifier {
  
  String _status = "start";   // current displayed page

  // temporarily store user's data here
  int points = 100;
  int nvouchers = 2; 
  List<Voucher> vouchers = [
    const Voucher("      Coffee 50% off coupon", 100, "This is a voucher"),
  //  const Voucher("      Coffee 50% off coupon", 100, "This is a voucher"),
  ];

  // showing successful message
  bool show = false;

  // showing login fail message
  bool loginFail = false;

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

  bool get showSuccess => show;

  bool get showFail => loginFail;

  void login(String id, String passwd) {
    if (id != "" && passwd != "") {
      _status = "home";
      loginFail = false;
      notifyListeners();
    }
    else {
      loginFail = true;
      notifyListeners();
    }
  }

  void special_handling(String page, String arg){
    if(page == "item"){
      if(show == false && arg == "buy" && points >= 50){
        points -= 50;
        vouchers.add(const Voucher("      Coffee 50% off coupon", 100, "This is a voucher"));
        nvouchers++;
        notifyListeners();
        show = true;
      }
      if(arg == "close"){
        show = false;
      }
    }
  }

  void redirect(String page, {String arg = ""}){
    _status = page;
    special_handling(page, arg);
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