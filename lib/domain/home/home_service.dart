import 'package:dartz/dartz.dart';
import 'package:pelix/domain/core/failures/main_failure.dart';
import 'package:pelix/domain/home/home_resp/home_resp.dart';
import 'package:pelix/domain/hotandnew/hotand_new_resp/hotand_new_resp.dart';

abstract class HomeService {
  Future<Either<MainFailure, HomeResp>> getHomemovieData();
  Future<Either<MainFailure, HomeResp>> getHometvData();
}
