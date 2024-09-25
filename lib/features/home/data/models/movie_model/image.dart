import 'dart:convert';

class Image {
  String? medium;
  String? original;

  Image({this.medium, this.original});

  factory Image.fromMap(Map<String, dynamic> data) => Image(
        medium: data['medium'] as String?,
        original: data['original'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'medium': medium,
        'original': original,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Image].
  factory Image.fromJson(String data) {
    return Image.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Image] to a JSON string.
  String toJson() => json.encode(toMap());
}
