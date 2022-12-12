// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Movie$ _$$Movie$FromJson(Map<String, dynamic> json) => _$Movie$(
      title: json['title'] as String,
      year: json['year'] as int,
      rating: json['rating'] as num,
      runtime: json['runtime'] as int,
      summary: json['summary'] as String,
      image: json['medium_cover_image'] as String,
      largerImage: json['large_cover_image'] as String,
      torrents:
          (json['torrents'] as List<dynamic>).map((dynamic e) => Torrent.fromJson(e as Map<String, dynamic>)).toList(),
    );

Map<String, dynamic> _$$Movie$ToJson(_$Movie$ instance) => <String, dynamic>{
      'title': instance.title,
      'year': instance.year,
      'rating': instance.rating,
      'runtime': instance.runtime,
      'summary': instance.summary,
      'medium_cover_image': instance.image,
      'large_cover_image': instance.largerImage,
      'torrents': instance.torrents,
    };

_$Torrent$ _$$Torrent$FromJson(Map<String, dynamic> json) => _$Torrent$(
      url: json['url'] as String,
      hash: json['hash'] as String,
      quality: json['quality'] as String,
    );

Map<String, dynamic> _$$Torrent$ToJson(_$Torrent$ instance) => <String, dynamic>{
      'url': instance.url,
      'hash': instance.hash,
      'quality': instance.quality,
    };
