import 'package:json_annotation/json_annotation.dart';

part 'home_resp.g.dart';

@JsonSerializable()
class HomeResp {
  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<HomeData> results;

  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  HomeResp(
      {this.page, this.results = const [], this.totalPages, this.totalResults});

  factory HomeResp.fromJson(Map<String, dynamic> json) {
    return _$HomeRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeRespToJson(this);
}

@JsonSerializable()
class HomeData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  @JsonKey(name: 'title')
  String? title;

  HomeData({
    this.backdropPath,
    this.id,
    this.posterPath,
    this.title,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) {
    return _$HomeDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeDataToJson(this);
}
