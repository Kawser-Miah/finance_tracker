import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';


class IncomeExpenseChartCard extends StatelessWidget {
  const IncomeExpenseChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colors.primaryContainer,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Income & Expenses",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Row(
                children: [
                  _icon(colors.primary),
                  const SizedBox(width: 8),
                  _icon(colors.primary),
                ],
              ),
            ],
          ),

          const SizedBox(height: 20),

          /// Chart
          SizedBox(
            height: 180,
            child: BarChart(_barChartData(context)),
          ),
        ],
      ),
    );
  }

  Widget _icon(Color color) {
    return Container(
      height: 34,
      width: 34,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color.withOpacity(.15),
      ),
      child: Icon(Icons.search, size: 18, color: color),
    );
  }

  BarChartData _barChartData(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return BarChartData(
      maxY: 15000,
      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: 5000,
        getDrawingHorizontalLine: (value) => FlLine(
          color: colors.primary.withOpacity(.2),
          strokeWidth: 1,
          dashArray: [5, 5],
        ),
      ),
      borderData: FlBorderData(show: false),
      titlesData: FlTitlesData(
        rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),

        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 5000,
            getTitlesWidget: (value, meta) {
              return Text(
                "${(value ~/ 1000)}k",
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.blue,
                ),
              );
            },
            reservedSize: 32,
          ),
        ),

        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              const days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];
              return Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  days[value.toInt()],
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.black,
                  ),
                ),
              );
            },
          ),
        ),
      ),
      barGroups: List.generate(7, (index) {
        return BarChartGroupData(
          x: index,
          barRods: [
            _rod(7000 + index * 600, colors.primary), // Income
            _rod(3000 + index * 400, Colors.blue), // Expense
          ],
          barsSpace: 6,
        );
      }),
    );
  }

  BarChartRodData _rod(double value, Color color) {
    return BarChartRodData(
      toY: value,
      width: 8,
      borderRadius: BorderRadius.circular(6),
      color: color,
    );
  }
}