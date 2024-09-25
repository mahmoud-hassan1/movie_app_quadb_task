import 'dart:convert';

import 'previousepisode.dart';
import 'self.dart';

class Links {
  Self? self;
  Previousepisode? previousepisode;

  Links({this.self, this.previousepisode});

  factory Links.fromMap(Map<String, dynamic> data) => Links(
        self: data['self'] == null
            ? null
            : Self.fromMap(data['self'] as Map<String, dynamic>),
        previousepisode: data['previousepisode'] == null
            ? null
            : Previousepisode.fromMap(
                data['previousepisode'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'self': self?.toMap(),
        'previousepisode': previousepisode?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Links].
  factory Links.fromJson(String data) {
    return Links.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Links] to a JSON string.
  String toJson() => json.encode(toMap());
}
