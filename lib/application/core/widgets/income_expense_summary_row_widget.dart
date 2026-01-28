import 'package:flutter/material.dart';

import '../../../domain/models/entity_model/time_series_total_model.dart';

class IncomeExpenseSummaryRow extends StatelessWidget {
  final List<TimeSeriesTotal> data;
  const IncomeExpenseSummaryRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final income = data.fold(0.0, (s, e) => s + e.income);
    final expense = data.fold(0.0, (s, e) => s + e.expense);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _item(
          icon: Icons.trending_up,
          title: "Income",
          amount: "$income",
          color: colors.primary,
        ),
        _item(
          icon: Icons.trending_down,
          title: "Expense",
          amount: "$expense",
          color: Colors.blue,
        ),
      ],
    );
  }

  Widget _item({
    required IconData icon,
    required String title,
    required String amount,
    required Color color,
  }) {
    return Column(
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 6),
        Text(title),
        Text(
          amount,
          style: TextStyle(fontWeight: FontWeight.bold, color: color),
        ),
      ],
    );
  }
}
