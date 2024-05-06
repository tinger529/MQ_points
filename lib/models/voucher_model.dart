class Voucher {
  const Voucher (this.name, this.points, this.descriptions);

  final String name;
  final int points;
  final String descriptions;

  String get getName => name;

  // create a quiz question from parsed JSON data
  factory Voucher.fromJson(Map<String, dynamic> json) {

    return switch(json) {
      {
        'name': String name,
        'points': int points,
        'descriptions': String descriptions,
      } => 
        Voucher(name, points, descriptions),
    _ => throw const FormatException('Failed to parse Voucher info'),
    };
  }
}