import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../generated/assets.dart';
import '../../../utils/models/theme.dart';

class IncomeExpenseBox extends StatelessWidget {
  final double? totalIncome, totalExpense;
  const IncomeExpenseBox(
      {super.key, required this.totalIncome, required this.totalExpense});

  @override
  Widget build(BuildContext context) {
    double percentage = (totalExpense! / totalIncome!);
    if (percentage > 1) {
      percentage = 1;
    }
    if (percentage.isNaN) {
      percentage = 0;
    }
    return Container(
      margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
      height: 135,
      width: double.infinity,
      // color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.homeIncome,
                        height: 16,
                        width: 16,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Total Income",
                        style: AppTheme.lightBodyText
                            .copyWith(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Text("Tk$totalIncome",
                      style: AppTheme.lightHeadingText.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary))
                ],
              ),
              Container(
                height: 70,
                width: 2,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.homeExpense,
                        height: 16,
                        width: 16,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Total Expense",
                        style: AppTheme.lightBodyText
                            .copyWith(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Text("Tk$totalExpense",
                      style: AppTheme.lightHeadingText.copyWith(
                          color: Theme.of(context).colorScheme.onPrimary))
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: LinearPercentIndicator(
              animation: true,
              animationDuration: 800,
              percent: percentage,
              lineHeight: 20,
              barRadius: const Radius.circular(13.5),
              backgroundColor: Colors.black54,
              progressColor: Theme.of(context).colorScheme.onPrimary,
              center: Text(
                "${percentage * 100}%",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Row(
              children: [
                const Icon(Icons.check_box_outlined),
                const SizedBox(
                  width: 3,
                ),
                Text(
                  "${percentage * 100}% Of Your Expense, Looks Good.",
                  style: AppTheme.lightBodyText
                      .copyWith(fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
