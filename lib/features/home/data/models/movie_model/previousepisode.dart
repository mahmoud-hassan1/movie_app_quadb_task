import 'dart:convert';

class Previousepisode {
  String? href;
  String? name;

  Previousepisode({this.href, this.name});

  factory Previousepisode.fromMap(Map<String, dynamic> data) {
    return Previousepisode(
      href: data['href'] as String?,
      name: data['name'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'href': href,
        'name': name,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Previousepisode].
  factory Previousepisode.fromJson(String data) {
    return Previousepisode.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Previousepisode] to a JSON string.
  String toJson() => json.encode(toMap());
}
