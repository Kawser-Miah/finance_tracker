import 'package:finance_tracker/domain/models/transaction_model.dart';

class TransactionByMonthModel {
  final List<String>? months;
  final List<TransactionModel>? transactions;

  TransactionByMonthModel({this.months, this.transactions});
}
