import 'package:dartz/dartz.dart';
import 'package:pelix/domain/core/failures/main_failure.dart';
import 'package:pelix/domain/hotandnew/hotand_new_resp/hotand_new_resp.dart';

abstract class HotAndNewService {
  Future<Either<MainFailure, HotandNewResp>> getHotAndNewMovieData();

  Future<Either<MainFailure, HotandNewResp>> getHotAndNewTvData();
}
