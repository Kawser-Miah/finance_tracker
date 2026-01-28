import 'package:finance_tracker/application/pages/analysis_page/bloc/analysis_bloc.dart';
import 'package:finance_tracker/di/di.dart';
import 'package:finance_tracker/domain/models/entity_model/time_series_total_model.dart';
import 'package:finance_tracker/utils/utils.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../utils/strings.dart';
import 'income_expense_summary_row_widget.dart';

class IncomeExpenseChartCardWidget extends StatelessWidget {
  final String name;
  const IncomeExpenseChartCardWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          getIt<AnalysisBloc>()..add(AnalysisEvent.started(name: name)),
      child: IncomeExpenseChartCard(name: name),
    );
  }
}

class IncomeExpenseChartCard extends StatefulWidget {
  final String name;
  const IncomeExpenseChartCard({super.key, required this.name});

  @override
  State<IncomeExpenseChartCard> createState() => _IncomeExpenseChartCardState();
}

class _IncomeExpenseChartCardState extends State<IncomeExpenseChartCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeOutCubic,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startAnimation() {
    if (!_animationController.isAnimating &&
        _animationController.status != AnimationStatus.completed) {
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return BlocBuilder<AnalysisBloc, AnalysisState>(
      builder: (context, state) {
        if (state is AnalysisLoadingState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is AnalysisDataLoadedState) {
          _startAnimation();
          return AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Column(
                children: [
                  Container(
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
                          child: BarChart(
                            _barChartData(
                              context,
                              state.data,
                              widget.name,
                              _animation.value,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  IncomeExpenseSummaryRow(data: state.data),
                ],
              );
            },
          );
        }
        if (state is AnalysisErrorState) {
          return Center(child: Text(state.errorMessage));
        }
        return Center(child: CircularProgressIndicator());
      },
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

  BarChartData _barChartData(
    BuildContext context,
    List<TimeSeriesTotal> timeSeriesTotal,
    String name,
    double animationValue,
  ) {
    final colors = Theme.of(context).colorScheme;

    double maxAmount = Utils.getMaxIncomeExpense(timeSeriesTotal);
    return BarChartData(
      maxY: maxAmount,
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
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),

        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: maxAmount / 4,
            getTitlesWidget: (value, meta) {
              String text;

              if (value >= 1000000) {
                text = '${(value ~/ 1000000).toStringAsFixed(1)}M';
              } else if (value >= 100000) {
                text = '${(value ~/ 100000).toStringAsFixed(0)}L';
              } else if (value >= 1000) {
                text = '${(value ~/ 1000).toStringAsFixed(0)}k';
              } else {
                text = value.toInt().toString();
              }
              return Text(
                text,
                style: TextStyle(fontSize: 11, color: Colors.blue),
              );
            },
            reservedSize: 32,
          ),
        ),

        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: (value, meta) {
              final index = value.toInt();

              if (index < 0 || index >= timeSeriesTotal.length) {
                return const SizedBox();
              }

              final date = timeSeriesTotal[index].period;

              String label;

              if (name == Strings.yearly) {
                // Yearly view
                label = date;
              } else if (name == Strings.monthly) {
                // Monthly view
                label = DateFormat('MMM').format(DateTime.parse(date));
              } else {
                // Daily view
                label = DateFormat('EEE').format(DateTime.parse(date));
              }
              return Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Text(
                  label,
                  style: TextStyle(fontSize: 11, color: Colors.black),
                ),
              );
            },
          ),
        ),
      ),
      barGroups: List.generate(timeSeriesTotal.length, (index) {
        return BarChartGroupData(
          x: index,
          barRods: [
            _rod(
              timeSeriesTotal[index].income * animationValue,
              colors.primary,
            ), // Income
            _rod(
              timeSeriesTotal[index].expense * animationValue,
              Colors.blue,
            ), // Expense
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
