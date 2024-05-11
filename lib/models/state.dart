import 'dart:collection';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mqpoint/models/voucher_model.dart';
import 'package:mqpoint/models/user_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class StateModel extends ChangeNotifier {
  
  String _status = "start";   // current displayed page

  // temporarily store user's data here
  String name = "John Doe";
  String uid = "00000000";
  int points = 100;
  int nvouchers = 1; 
  List<dynamic> vouchers = [
    const Voucher("Coffee 50% off coupon", 50, "        Embrace the warmth and energy it\n        brings, igniting your day with a burst\n        of invigorating freshness.\n\n        Store: perfect cafe \n        Items: all coffee \n        Expiration date: May 20th, 2024"),
  ];
  bool dark = false;
  List<String> history = [];

  // showing successful message
  bool show = false;

  // showing login fail message
  bool loginFail = false;

  // background color, foreground color, font color
  List<Color> darkScene = [
    const Color.fromARGB(255, 7, 3, 39),
    const Color(0xFF073636),
    const Color.fromARGB(255, 245, 247, 248),
  ];

  // background color, foreground color, font color
  List<Color> lightScene = [
    const Color(0xFFBBE9F3),
    const Color(0xFFF2FEFE),
    const Color.fromARGB(255, 2, 6, 9),
  ];

  void toggleTheme(){
    dark = !dark;
    notifyListeners();
  }

  List<Color> get currentScene => dark ? darkScene : lightScene;
  bool get currentTheme => dark;

  StateModel() {
    _status = "start";
    loadUser();
  }

  Future<void> loadUser() async {
    String jsonString = await rootBundle.loadString('assets/data/sampleUser.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    User user = User.fromJson(jsonMap["users"][0]);
    points = user.points;
    dark = user.dark;
    name = user.name;
    uid = user.uid;
    String voucherString = await rootBundle.loadString('assets/data/${user.voucherfile}');
    Map<String, dynamic> voucherList = json.decode(voucherString);
    vouchers = voucherList["vouchers"].map((e) => Voucher.fromJson(e)).toList();
    // Set to login after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      _status = "login";
      notifyListeners();
    });
  }

  String get pageStatus => _status;

  List<dynamic> get currentVouchers => UnmodifiableListView(vouchers);

  int get currentPoints => points;

  bool get showSuccess => show;

  bool get showFail => loginFail;

  String get currentName => name;

  String get currentUid => uid;

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

  // ignore: non_constant_identifier_names
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

    if(page == "setting"){
      if(arg == "theme"){
        toggleTheme();
      }
    }
  }

  void redirect(String page, {String arg = ""}){
    _status = page;
    special_handling(page, arg);
    notifyListeners();
  }

  void createHistory(voucher){
    String record = "05.29.2024\n${voucher.name}\n${voucher.points} points";
    history.add(record);
    notifyListeners();
  }

  // write new points to the user's json file



}