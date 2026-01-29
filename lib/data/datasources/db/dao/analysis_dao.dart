import 'package:floor/floor.dart';

import '../../../../domain/models/entity_model/time_series_total_model.dart';

@dao
abstract class AnalysisDao {
  @Query("""
  SELECT 
    d.day AS period,
    IFNULL(i.total_income, 0.0) AS income,
    IFNULL(e.total_expense, 0.0) AS expense
  FROM
  (
    SELECT DATE('now','-6 days','localtime') AS day
    UNION ALL SELECT DATE('now','-5 days','localtime')
    UNION ALL SELECT DATE('now','-4 days','localtime')
    UNION ALL SELECT DATE('now','-3 days','localtime')
    UNION ALL SELECT DATE('now','-2 days','localtime')
    UNION ALL SELECT DATE('now','-1 days','localtime')
    UNION ALL SELECT DATE('now','localtime')
  ) d
  LEFT JOIN
  (
    SELECT DATE(date) AS day, SUM(income) AS total_income
    FROM incomes
    GROUP BY DATE(date)
  ) i ON d.day = i.day
  LEFT JOIN
  (
    SELECT DATE(date) AS day, SUM(expense) AS total_expense
    FROM expenses
    GROUP BY DATE(date)
  ) e ON d.day = e.day
  ORDER BY d.day ASC;
  """)
  Future<List<TimeSeriesTotal>> getDailySummary();

  @Query("""
SELECT 
  m.month || '-01' AS period,
  IFNULL(i.total_income, 0.0) AS income,
  IFNULL(e.total_expense, 0.0) AS expense
FROM
(
  SELECT strftime('%Y-%m','now','localtime','-5 months') AS month
  UNION ALL SELECT strftime('%Y-%m','now','localtime','-4 months')
  UNION ALL SELECT strftime('%Y-%m','now','localtime','-3 months')
  UNION ALL SELECT strftime('%Y-%m','now','localtime','-2 months')
  UNION ALL SELECT strftime('%Y-%m','now','localtime','-1 months')
  UNION ALL SELECT strftime('%Y-%m','now','localtime')
) m
LEFT JOIN
(
  SELECT strftime('%Y-%m',date,'localtime') AS month, SUM(income) AS total_income
  FROM incomes
  GROUP BY strftime('%Y-%m',date,'localtime')
) i ON m.month = i.month
LEFT JOIN
(
  SELECT strftime('%Y-%m',date,'localtime') AS month, SUM(expense) AS total_expense
  FROM expenses
  GROUP BY strftime('%Y-%m',date,'localtime')
) e ON m.month = e.month
ORDER BY m.month ASC;
""")
  Future<List<TimeSeriesTotal>> getMonthlySummary();
  @Query("""
  SELECT 
    y.year AS period,
    IFNULL(i.total_income, 0.0) AS income,
    IFNULL(e.total_expense, 0.0) AS expense
  FROM
  (
    SELECT strftime('%Y','now','-4 years') AS year
    UNION ALL SELECT strftime('%Y','now','-3 years')
    UNION ALL SELECT strftime('%Y','now','-2 years')
    UNION ALL SELECT strftime('%Y','now','-1 years')
    UNION ALL SELECT strftime('%Y','now')
  ) y
  LEFT JOIN
  (
    SELECT strftime('%Y',date) AS year, SUM(income) AS total_income
    FROM incomes
    GROUP BY strftime('%Y',date)
  ) i ON y.year = i.year
  LEFT JOIN
  (
    SELECT strftime('%Y',date) AS year, SUM(expense) AS total_expense
    FROM expenses
    GROUP BY strftime('%Y',date)
  ) e ON y.year = e.year
  ORDER BY y.year ASC;
  """)
  Future<List<TimeSeriesTotal>> getYearlySummary();
}
