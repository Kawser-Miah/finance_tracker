import 'package:floor/floor.dart';

@DatabaseView('''
SELECT 
  '' AS period,
  0.0 AS income,
  0.0 AS expense
''')
class TimeSeriesTotal {
  final String period;
  final double income;
  final double expense;

  TimeSeriesTotal(this.period, this.income, this.expense);

  @override
  String toString() {
    return """{
      period: $period,
      income: $income,
      expense: $expense
    }""";
  }
}
