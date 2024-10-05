import 'package:dartz/dartz.dart';
import 'package:finance_tracker/data/datasources/db/finance_tracker_db.dart';
import 'package:finance_tracker/domain/failures/failures.dart';
import 'package:finance_tracker/domain/models/transaction_by_month_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/transaction_model.dart';
import '../../domain/repositories/category_details_repository.dart';
import '../exceptions/exception.dart';

@LazySingleton(as: CategoryDetailsRepository)
class CategoryDetailsRepositoryIml extends CategoryDetailsRepository {
  final FinanceTrackerDB db;

  CategoryDetailsRepositoryIml(this.db);

  @override
  Future<Either<Failure, TransactionByMonthModel>> getTransactionGroupByMonth(
      String category) async {
    try {
      List<String> months = [];
      List<TransactionModel> transactions = [];
      final incomeMonth = await db.incomeDao.getMonthYear(category);
      final expenseMonth = await db.expenseDao.getMonthYear(category);
      final incomes = await db.incomeDao.getIncomeByCategory(category);
      final expenses = await db.expenseDao.getExpenseByCategory(category);
      if (incomeMonth.isNotEmpty || expenseMonth.isNotEmpty) {
        for (var i in incomeMonth) {
          if (!months.contains(i)) {
            months.add(i);
          }
        }
        for (var i in expenseMonth) {
          if (!months.contains(i)) {
            months.add(i);
          }
        }
        for (var i in incomes) {
          transactions.add(TransactionModel(
              title: i.incomeTitle,
              id: i.id,
              category: i.category,
              type: i.type,
              amount: i.income,
              description: i.description,
              date: i.date));
        }
        for (var i in expenses) {
          transactions.add(TransactionModel(
              title: i.expenseTitle,
              id: i.id,
              category: i.category,
              type: i.type,
              amount: i.expense,
              description: i.description,
              date: i.date));
        }
      } else {
        return left(NullFailure());
      }
      return right(
          TransactionByMonthModel(months: months, transactions: transactions));
    } catch (e) {
      print(e);
      throw ServerException();
    }
  }
}
