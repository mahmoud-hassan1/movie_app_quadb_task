import 'dart:convert';

class Country {
  String? name;
  String? code;
  String? timezone;

  Country({this.name, this.code, this.timezone});

  factory Country.fromMap(Map<String, dynamic> data) => Country(
        name: data['name'] as String?,
        code: data['code'] as String?,
        timezone: data['timezone'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'code': code,
        'timezone': timezone,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Country].
  factory Country.fromJson(String data) {
    return Country.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Country] to a JSON string.
  String toJson() => json.encode(toMap());
}
