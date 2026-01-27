import 'package:dartz/dartz.dart';

import '../failures/failures.dart';
import '../models/entity_model/time_series_total_model.dart';

abstract class AnalysisRepository {
  Future<Either<Failure, List<TimeSeriesTotal>>> getDailyAnalysis();
  Future<Either<Failure, List<TimeSeriesTotal>>> getMonthlyAnalysis();
  Future<Either<Failure, List<TimeSeriesTotal>>> getYearlyAnalysis();
}
