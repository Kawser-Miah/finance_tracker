import 'package:dartz/dartz.dart';
import 'package:finance_tracker/domain/failures/failures.dart';
import 'package:finance_tracker/domain/models/total_balance.dart';

abstract class HomePageRepository {
  Future<Either<Failure, TotalBalance>> getIncomeExpenseData();
}
