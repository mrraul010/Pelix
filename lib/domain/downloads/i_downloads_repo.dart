import 'package:dartz/dartz.dart';
import 'package:pelix/domain/core/failures/main_failure.dart';
import 'package:pelix/domain/downloads/models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDownloadsImages();
}
