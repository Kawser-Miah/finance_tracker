import 'package:finance_tracker/domain/models/transaction_model.dart';

abstract class InsertTransactionRepository {
  Future<void> insertTransaction(TransactionModel t);
  Future<void> deleteTransaction(int id, String type);
  Future<void> updateTransaction(TransactionModel t);
}
