import 'package:floor/floor.dart';

class AnalysisModel {}

@entity
class SingleAnalysis {
  @primaryKey
  final String time;
  final double total_amount;

  SingleAnalysis({required this.time, required this.total_amount});
}
