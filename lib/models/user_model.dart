import 'package:mqpoint/models/voucher_model.dart';

class User {
  User (this.name, this.uid, this.points, this.voucherfile, this.dark);

  String name;
  String uid;
  int points;
  String voucherfile;
  List<Voucher> vouchers = [];
  bool dark = false;

  String get getName => name;

  // create a quiz question from parsed JSON data
  factory User.fromJson(Map<String, dynamic> json) {

    return switch(json) {
      {
        'name': String name,
        'uid': String uid,
        'points': int points,
        'voucherfile': String voucherfile,
        'dark': bool dark,
      } => 
        User(name, uid, points, voucherfile, dark),
    _ => throw const FormatException('Failed to parse Voucher info'),
    };
  }
}