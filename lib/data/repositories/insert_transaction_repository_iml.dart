import 'package:finance_tracker/data/datasources/db/finance_tracker_db.dart';
import 'package:finance_tracker/domain/models/entity_model/expense_entity_model.dart';
import 'package:finance_tracker/domain/models/entity_model/income_entity_model.dart';
import 'package:finance_tracker/domain/models/transaction_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/repositories/insert_transaction_repository.dart';
import '../../utils/strings.dart';

@LazySingleton(as: InsertTransactionRepository)
class InsertTransactionRepositoryIml extends InsertTransactionRepository {
  final FinanceTrackerDB db;

  InsertTransactionRepositoryIml(this.db);

  @override
  Future<void> insertTransaction(TransactionModel t) async {
    if (t.type == Strings.income) {
      await db.incomeDao.insertIncome(IncomeEntityModel(
          type: t.type,
          category: t.category,
          income: t.amount,
          incomeTitle: t.title,
          description: t.description,
          date: t.date));
    } else {
      await db.expenseDao.insertExpense(ExpenseEntityModel(
          type: t.type,
          category: t.category,
          expense: t.amount,
          expenseTitle: t.title,
          description: t.description,
          date: t.date));
    }
  }

  @override
  Future<void> deleteTransaction(int id, String type) async {
    if (type == Strings.income) {
      await db.incomeDao.deleteIncomes(id);
    } else {
      await db.expenseDao.deleteExpense(id);
    }
  }

  @override
  Future<void> updateTransaction(TransactionModel t) async {
    if (t.type == Strings.income) {
      await db.incomeDao.updateIncome(IncomeEntityModel(
          id: t.id,
          type: t.type,
          category: t.category,
          income: t.amount,
          incomeTitle: t.title,
          description: t.description,
          date: t.date));
    } else {
      await db.expenseDao.updateExpense(ExpenseEntityModel(
          id: t.id,
          type: t.type,
          category: t.category,
          expense: t.amount,
          expenseTitle: t.title,
          description: t.description,
          date: t.date));
    }
  }
}
