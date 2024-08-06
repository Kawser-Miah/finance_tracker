import 'package:dartz/dartz.dart';
import 'package:finance_tracker/data/datasources/db/finance_tracker_db.dart';
import 'package:finance_tracker/data/exceptions/exception.dart';
import 'package:finance_tracker/domain/failures/failures.dart';
import 'package:finance_tracker/domain/models/transaction_model.dart';
import '../../domain/repositories/transaction_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: TransactionRepository)
class TransactionRepositoryIml extends TransactionRepository {
  final FinanceTrackerDB db;

  TransactionRepositoryIml({required this.db});

  @override
  Future<Either<Failure, List<TransactionModel>>>
      getTransactionDataByCurrentDate() async {

    try {
      List<TransactionModel> transactions = [];
      final incomeResult = await db.incomeDao.getIncomeDataByCurrentDate();
      final expenseResult = await db.expenseDao.getExpenseDataByCurrentDate();

      if(incomeResult.isNotEmpty || expenseResult.isNotEmpty){
        for(var i in incomeResult){
          transactions.add(TransactionModel(id: i.id, category: i.category, type: i.type, amount: i.income, description: i.description??"You do not add any descriptions...!", date: i.date));
        }
        for(var i in expenseResult){
          transactions.add(TransactionModel(id: i.id, category: i.category, type: i.type, amount: i.expense, description: i.description??"You do not add any descriptions...!", date: i.date));
        }
      }else{
        final incomeResult = await db.incomeDao.getIncomeDataByPreviousDate();
        final expenseResult = await db.expenseDao.getExpenseDataByPreviousDate();
        if(incomeResult.isNotEmpty || expenseResult.isNotEmpty){
          for(var i in incomeResult){
            transactions.add(TransactionModel(id: i.id, category: i.category, type: i.type, amount: i.income, description: i.description??"You do not add any descriptions...!", date: i.date));
          }
          for(var i in expenseResult){
            transactions.add(TransactionModel(id: i.id, category: i.category, type: i.type, amount: i.expense, description: i.description??"You do not add any descriptions...!", date: i.date));
          }
        }else{
          return left(NullFailure());
        }
      }
      return right(transactions);
    } catch(e) {
      throw ServerException();
    }
  }

  @override
  Future<Either<Failure, List<TransactionModel>>>
      getTransactionDataByCurrentMonth() async{
    try{
      List<TransactionModel> transactions = [];
      final incomeResult = await db.incomeDao.getIncomeDataByCurrentMonth();
      final expenseResult = await db.expenseDao.getExpenseDataByCurrentMonth();

      if(incomeResult.isNotEmpty || expenseResult.isNotEmpty){
        for(var i in incomeResult){
          transactions.add(TransactionModel(id: i.id, category: i.category, type: i.type, amount: i.income, description: i.description??"You do not add any descriptions...!", date: i.date));
        }
        for(var i in expenseResult){
          transactions.add(TransactionModel(id: i.id, category: i.category, type: i.type, amount: i.expense, description: i.description??"You do not add any descriptions...!", date: i.date));
        }
      }else{
        return left(NullFailure());
      }
      return right(transactions);
    }catch(e){
      throw ServerException();
    }
  }

  @override
  Future<Either<Failure, List<TransactionModel>>>
      getTransactionDataByCurrentWeek() async{
    try{
      List<TransactionModel> transactions = [];
      final incomeResult = await db.incomeDao.getIncomeDataByCurrentWeek();
      final expenseResult = await db.expenseDao.getExpenseDataByCurrentWeek();

      if(incomeResult.isNotEmpty || expenseResult.isNotEmpty){
        for(var i in incomeResult){
          transactions.add(TransactionModel(id: i.id, category: i.category, type: i.type, amount: i.income, description: i.description??"You do not add any descriptions...!", date: i.date));
        }
        for(var i in expenseResult){
          transactions.add(TransactionModel(id: i.id, category: i.category, type: i.type, amount: i.expense, description: i.description ??"You do not add any descriptions...!", date: i.date));
        }
      }else{
        return left(NullFailure());
      }
      return right(transactions);
    }catch(e){
      throw ServerException();
    }
  }
}
