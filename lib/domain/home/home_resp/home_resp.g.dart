// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResp _$HomeRespFromJson(Map<String, dynamic> json) => HomeResp(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => HomeData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HomeRespToJson(HomeResp instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };

HomeData _$HomeDataFromJson(Map<String, dynamic> json) => HomeData(
      backdropPath: json['backdrop_path'] as String?,
      id: (json['id'] as num?)?.toInt(),
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String?,
    );

Map<String, dynamic> _$HomeDataToJson(HomeData instance) => <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'poster_path': instance.posterPath,
      'title': instance.title,
    };
