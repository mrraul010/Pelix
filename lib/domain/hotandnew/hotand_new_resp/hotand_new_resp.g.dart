// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hotand_new_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotandNewResp _$HotandNewRespFromJson(Map<String, dynamic> json) =>
    HotandNewResp(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num?)?.toInt(),
      totalResults: (json['total_results'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HotandNewRespToJson(HotandNewResp instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
