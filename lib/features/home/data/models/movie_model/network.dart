import 'dart:convert';

import 'country.dart';

class Network {
  int? id;
  String? name;
  Country? country;
  String? officialSite;

  Network({this.id, this.name, this.country, this.officialSite});

  factory Network.fromMap(Map<String, dynamic> data) => Network(
        id: data['id'] as int?,
        name: data['name'] as String?,
        country: data['country'] == null
            ? null
            : Country.fromMap(data['country'] as Map<String, dynamic>),
        officialSite: data['officialSite'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'name': name,
        'country': country?.toMap(),
        'officialSite': officialSite,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Network].
  factory Network.fromJson(String data) {
    return Network.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Network] to a JSON string.
  String toJson() => json.encode(toMap());
}
