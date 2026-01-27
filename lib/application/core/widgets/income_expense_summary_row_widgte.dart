import 'package:flutter/material.dart';
class IncomeExpenseSummaryRow extends StatelessWidget {
  const IncomeExpenseSummaryRow({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _item(
          icon: Icons.trending_up,
          title: "Income",
          amount: "\$4,120.00",
          color: colors.primary,
        ),
        _item(
          icon: Icons.trending_down,
          title: "Expense",
          amount: "\$1,187.40",
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
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
      ],
    );
  }
}