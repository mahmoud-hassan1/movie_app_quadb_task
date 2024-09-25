import 'dart:convert';

class Rating {
  double? average;

  Rating({this.average});

  factory Rating.fromMap(Map<String, dynamic> data) => Rating(
        average: (data['average'] as num?)?.toDouble(),
      );

  Map<String, dynamic> toMap() => {
        'average': average,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Rating].
  factory Rating.fromJson(String data) {
    return Rating.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Rating] to a JSON string.
  String toJson() => json.encode(toMap());
}
