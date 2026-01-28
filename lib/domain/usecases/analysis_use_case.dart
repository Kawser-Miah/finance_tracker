import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../application/core/category_enum.dart';
import '../failures/failures.dart';
import '../models/entity_model/time_series_total_model.dart';
import '../repositories/analysis_repository.dart';

@injectable
class AnalysisUseCase {
  final AnalysisRepository analysisRepository;

  AnalysisUseCase({required this.analysisRepository});
  Future<Either<Failure, List<TimeSeriesTotal>>> call(String name) async {
    CategoryEnum categoryEnum = CategoryEnum.getEnum(name);
    switch (categoryEnum) {
      case CategoryEnum.daily:
        return await analysisRepository.getDailyAnalysis();
      case CategoryEnum.monthly:
        return await analysisRepository.getMonthlyAnalysis();
      case CategoryEnum.yearly:
        return await analysisRepository.getYearlyAnalysis();
      default:
        return await analysisRepository.getDailyAnalysis();
    }
  }
}
