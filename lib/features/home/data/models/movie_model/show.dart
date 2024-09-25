import 'dart:convert';

import 'externals.dart';
import 'image.dart';
import 'links.dart';
import 'network.dart';
import 'rating.dart';
import 'schedule.dart';

class Show {
  int? id;
  String? url;
  String? name;
  String? type;
  String? language;
  List<String>? genres;
  String? status;
  int? runtime;
  int? averageRuntime;
  String? premiered;
  dynamic ended;
  String? officialSite;
  Schedule? schedule;
  Rating? rating;
  int? weight;
  Network? network;
  dynamic webChannel;
  dynamic dvdCountry;
  Externals? externals;
  Image? image;
  String? summary;
  int? updated;
  Links? links;

  Show({
    this.id,
    this.url,
    this.name,
    this.type,
    this.language,
    this.genres,
    this.status,
    this.runtime,
    this.averageRuntime,
    this.premiered,
    this.ended,
    this.officialSite,
    this.schedule,
    this.rating,
    this.weight,
    this.network,
    this.webChannel,
    this.dvdCountry,
    this.externals,
    this.image,
    this.summary,
    this.updated,
    this.links,
  });

  factory Show.fromMap(Map<String, dynamic> data) => Show(
        id: data['id'] as int?,
        url: data['url'] as String?,
        name: data['name'] as String?,
        type: data['type'] as String?,
        language: data['language'] as String?,
        genres: (data['genres'] as List<dynamic>?)?.map((e) => e as String).toList(),
        status: data['status'] as String?,
        runtime: data['runtime'] as int?,
        averageRuntime: data['averageRuntime'] as int?,
        premiered: data['premiered'] as String?,
        ended: data['ended'] as dynamic,
        officialSite: data['officialSite'] as String?,
        schedule: data['schedule'] == null
            ? null
            : Schedule.fromMap(data['schedule'] as Map<String, dynamic>),
        rating: data['rating'] == null
            ? null
            : Rating.fromMap(data['rating'] as Map<String, dynamic>),
        weight: data['weight'] as int?,
        network: data['network'] == null
            ? null
            : Network.fromMap(data['network'] as Map<String, dynamic>),
        webChannel: data['webChannel'] as dynamic,
        dvdCountry: data['dvdCountry'] as dynamic,
        externals: data['externals'] == null
            ? null
            : Externals.fromMap(data['externals'] as Map<String, dynamic>),
        image: data['image'] == null
            ? null
            : Image.fromMap(data['image'] as Map<String, dynamic>),
        summary: data['summary'] as String?,
        updated: data['updated'] as int?,
        links: data['_links'] == null
            ? null
            : Links.fromMap(data['_links'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'url': url,
        'name': name,
        'type': type,
        'language': language,
        'genres': genres,
        'status': status,
        'runtime': runtime,
        'averageRuntime': averageRuntime,
        'premiered': premiered,
        'ended': ended,
        'officialSite': officialSite,
        'schedule': schedule?.toMap(),
        'rating': rating?.toMap(),
        'weight': weight,
        'network': network?.toMap(),
        'webChannel': webChannel,
        'dvdCountry': dvdCountry,
        'externals': externals?.toMap(),
        'image': image?.toMap(),
        'summary': summary,
        'updated': updated,
        '_links': links?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Show].
  factory Show.fromJson(String data) {
    return Show.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Show] to a JSON string.
  String toJson() => json.encode(toMap());
}
