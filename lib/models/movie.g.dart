// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Movie$ _$$Movie$FromJson(Map<String, dynamic> json) => _$Movie$(
      title: json['title'] as String,
      year: json['year'] as int,
      image: json['medium_cover_image'] as String,
    );

Map<String, dynamic> _$$Movie$ToJson(_$Movie$ instance) => <String, dynamic>{
      'title': instance.title,
      'year': instance.year,
      'medium_cover_image': instance.image,
    };
