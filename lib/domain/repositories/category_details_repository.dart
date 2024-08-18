import 'package:dartz/dartz.dart';
import 'package:finance_tracker/domain/failures/failures.dart';
import 'package:finance_tracker/domain/models/transaction_by_month_model.dart';

abstract class CategoryDetailsRepository {
  Future<Either<Failure, TransactionByMonthModel>> getTransactionGroupByMonth(String category);
}
