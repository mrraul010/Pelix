import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pelix/domain/core/api_end_points.dart';
import 'package:pelix/domain/core/failures/main_failure.dart';
import 'package:pelix/domain/home/home_resp/home_resp.dart';
import 'package:pelix/domain/home/home_service.dart';

@LazySingleton(as: HomeService)
class HomeImpl implements HomeService {
  @override
  Future<Either<MainFailure, HomeResp>> getHomemovieData() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.hometopratedmovie,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeResp.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, HomeResp>> getHometvData() async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        ApiEndPoints.hometoptentv,
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = HomeResp.fromJson(response.data);

        return Right(result);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailure.clientFailure());
    }
  }
}
