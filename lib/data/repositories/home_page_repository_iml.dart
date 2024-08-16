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
    double totalExpenseC = 0;
    double totalIncomeC = 0;
    double totalExpensePre = 0;
    double totalIncomePre = 0;
    try {
      totalExpenseC =
          (await db.expenseDao.getTotalExpenseByCurrentMonth())?.toDouble() ??
              0.0;
    } catch (e) {
      print("EC: $e");
    }
    try {
      totalIncomeC =
          (await db.incomeDao.getTotalIncomeByCurrentMonth())?.toDouble() ??
              0.0;
    } catch (e) {
      print("IC: $e");
    }
    try {
      totalExpensePre =
          await db.expenseDao.getTotalExpenseByPreviousMonth() ?? 0;
    } catch (e) {
      print("EP: $e");
    }
    try {
      totalIncomePre = await db.incomeDao.getTotalIncomeByPreviousMonth() ?? 0;
    } catch (e) {
      print("IP: $e");
    }
    var bestExpense =
        await db.expenseDao.getCategoryWithHighestExpenseByLastWeek();
    bestExpense ??= BestExpense(category: 'category', total_expense: 0);
    return right(TotalBalance(
        totalExpense: totalExpenseC,
        totalIncome: totalIncomeC,
        bestExpense: bestExpense,
        savingsLastMonth: (totalIncomePre - totalExpensePre)));
    // savingsLastMonth: 23));
    // } catch (e) {
    //   print(e);
    //   return left(NullFailure());
    // }
  }
}
