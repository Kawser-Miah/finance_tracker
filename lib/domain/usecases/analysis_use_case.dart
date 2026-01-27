import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../failures/failures.dart';
import '../models/entity_model/time_series_total_model.dart';
import '../repositories/analysis_repository.dart';

@injectable
class AnalysisUseCase {
  final AnalysisRepository analysisRepository;

  AnalysisUseCase({required this.analysisRepository});
  Future<Either<Failure, List<TimeSeriesTotal>>> call() async =>
      await analysisRepository.getDailyAnalysis();
  Future<Either<Failure, List<TimeSeriesTotal>>> callMonthly() async =>
      await analysisRepository.getMonthlyAnalysis();
  Future<Either<Failure, List<TimeSeriesTotal>>> callYearly() async =>
      await analysisRepository.getYearlyAnalysis();
}
