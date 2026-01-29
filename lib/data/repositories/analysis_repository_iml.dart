import 'package:dartz/dartz.dart';
import 'package:finance_tracker/domain/failures/failures.dart';
import 'package:finance_tracker/domain/models/entity_model/time_series_total_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/analysis_repository.dart';
import '../datasources/db/finance_tracker_db.dart';

@LazySingleton(as: AnalysisRepository)
class AnalysisRepositoryIml extends AnalysisRepository {
  final FinanceTrackerDB db;

  AnalysisRepositoryIml(this.db);
  @override
  Future<Either<Failure, List<TimeSeriesTotal>>> getDailyAnalysis() async {
    try {
      final result = await db.analysisDao.getDailySummary();
      if (result.isEmpty) {
        return left(NullFailure());
      } else if (!result.any((e) => e.income != 0 || e.expense != 0)) {
        return left(NullFailure());
      } else {
        return right(result);
      }
    } catch (e) {
      return left(NullFailure());
    }
  }

  @override
  Future<Either<Failure, List<TimeSeriesTotal>>> getMonthlyAnalysis() async {
    try {
      final result = await db.analysisDao.getMonthlySummary();
      if (result.isEmpty) {
        return left(NullFailure());
      } else if (!result.any((e) => e.income != 0 || e.expense != 0)) {
        return left(NullFailure());
      } else {
        return right(result);
      }
    } catch (e) {
      return left(NullFailure());
    }
  }

  @override
  Future<Either<Failure, List<TimeSeriesTotal>>> getYearlyAnalysis() async {
    try {
      final result = await db.analysisDao.getYearlySummary();
      if (result.isEmpty) {
        return left(NullFailure());
      } else if (!result.any((e) => e.income != 0 || e.expense != 0)) {
        return left(NullFailure());
      } else {
        return right(result);
      }
    } catch (e) {
      return left(NullFailure());
    }
  }
}
