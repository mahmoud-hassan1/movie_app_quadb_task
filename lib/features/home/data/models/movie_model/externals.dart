import 'dart:convert';

class Externals {
  dynamic tvrage;
  int? thetvdb;
  String? imdb;

  Externals({this.tvrage, this.thetvdb, this.imdb});

  factory Externals.fromMap(Map<String, dynamic> data) => Externals(
        tvrage: data['tvrage'] as dynamic,
        thetvdb: data['thetvdb'] as int?,
        imdb: data['imdb'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'tvrage': tvrage,
        'thetvdb': thetvdb,
        'imdb': imdb,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Externals].
  factory Externals.fromJson(String data) {
    return Externals.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Externals] to a JSON string.
  String toJson() => json.encode(toMap());
}
