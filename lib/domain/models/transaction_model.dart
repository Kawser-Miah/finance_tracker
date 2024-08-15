class TransactionModel {
  final int? id;
  final String? category;
  final String? title;
  final String? type;
  final double? amount;
  final String? description;
  final String? date;

  TransactionModel(
      {required this.title,
      required this.id,
      required this.category,
      required this.type,
      required this.amount,
      required this.description,
      required this.date});
}
