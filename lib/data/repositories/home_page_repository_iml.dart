import 'package:dartz/dartz.dart';
import 'package:finance_tracker/data/datasources/db/finance_tracker_db.dart';
import 'package:finance_tracker/domain/failures/failures.dart';
import 'package:finance_tracker/domain/models/total_balance.dart';
import '../../domain/repositories/home_page_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HomePageRepository)
class HomePageRepositoryIml extends HomePageRepository {
  final FinanceTrackerDB db;

  HomePageRepositoryIml({required this.db});
  @override
  Future<Either<Failure, TotalBalance>> getIncomeExpenseData() async {
    try {
      final totalExpenseC = await db.expenseDao.getTotalExpenseByCurrentMonth();
      final totalIncomeC = await db.incomeDao.getTotalIncomeByCurrentMonth();
      final totalExpensePre =
          await db.expenseDao.getTotalExpenseByPreviousMonth();
      final totalIncomePre = await db.incomeDao.getTotalIncomeByPreviousMonth();
      var bestExpense =
          await db.expenseDao.getCategoryWithHighestExpenseByLastWeek();
      bestExpense ??= BestExpense(category: 'category', total_expense: 0);
      return right(TotalBalance(
          totalExpense: totalExpenseC,
          totalIncome: totalIncomeC,
          bestExpense: bestExpense,
          savingsLastMonth: (totalIncomePre! - totalExpensePre!)));
    } catch (e) {
      return left(NullFailure());
    }
  }
}
