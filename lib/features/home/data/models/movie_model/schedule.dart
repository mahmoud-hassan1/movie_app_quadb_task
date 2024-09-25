import 'dart:convert';

class Schedule {
  String? time;
  List<String>? days;

  Schedule({this.time, this.days});

  factory Schedule.fromMap(Map<String, dynamic> data) => Schedule(
        time: data['time'] as String?,
        days: (data['days'] as List<dynamic>?)?.map((e) => e as String).toList(),
      );

  Map<String, dynamic> toMap() => {
        'time': time,
        'days': days,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Schedule].
  factory Schedule.fromJson(String data) {
    return Schedule.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Schedule] to a JSON string.
  String toJson() => json.encode(toMap());
}
