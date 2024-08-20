import "package:dartz/dartz.dart";
import "package:finance_tracker/domain/failures/failures.dart";
import "package:finance_tracker/domain/models/transaction_by_month_model.dart";
import "package:finance_tracker/domain/models/transaction_model.dart";

abstract class TransactionRepository {
  Future<Either<Failure, List<TransactionModel>>> getTransactionDataByCurrentDate();
  Future<Either<Failure, List<TransactionModel>>> getTransactionDataByCurrentWeek();
  Future<Either<Failure, List<TransactionModel>>> getTransactionDataByCurrentMonth();
  Future<Either<Failure, TransactionByMonthModel>> getAllTransaction();
  Future<Either<Failure, TransactionByMonthModel>> getAllIncomes();
  Future<Either<Failure, TransactionByMonthModel>> getAllExpenses();
}
