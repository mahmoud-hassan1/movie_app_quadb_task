import 'dart:convert';

import 'package:quadb_assignment/features/home/domain/entities/movie_entity/movie_entity.dart';

import 'show.dart';

class MovieModel {
  double? score;
  Show? show;

  MovieModel({this.score, this.show});

  factory MovieModel.fromMap(Map<String, dynamic> data) => MovieModel(
        score: (data['score'] as num?)?.toDouble(),
        show: data['show'] == null
            ? null
            : Show.fromMap(data['show'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'score': score,
        'show': show?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [MovieModel].
  factory MovieModel.fromJson(String data) {
    return MovieModel.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [MovieModel] to a JSON string.
  String toJson() => json.encode(toMap());
}
extension MovieModelMapper on MovieModel {
  MovieEntity toEntity() {
    return MovieEntity(
      title: show?.name ?? '',
      summary: show?.summary ?? '',
      rating: show?.rating?.average ?? 0.0,
      originalImage: show?.image?.original ?? '',
      mediumImage: show?.image?.medium ?? '',
    );
  }
}
