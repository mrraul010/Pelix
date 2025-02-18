import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'hotand_new_resp.g.dart';

@JsonSerializable()
class HotandNewResp {
  int? page;
  List<Result>? results;
  @JsonKey(name: 'total_pages')
  int? totalPages;
  @JsonKey(name: 'total_results')
  int? totalResults;

  HotandNewResp({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory HotandNewResp.fromJson(Map<String, dynamic> json) {
    return _$HotandNewRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotandNewRespToJson(this);
}
