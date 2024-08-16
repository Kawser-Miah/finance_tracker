import 'package:finance_tracker/domain/models/transaction_model.dart';

abstract class InsertTransactionRepository {
  Future<void> insertTransaction(TransactionModel transaction);
}
