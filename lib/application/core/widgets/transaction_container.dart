import 'package:finance_tracker/domain/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../generated/assets.dart';
import '../../../utils/models/theme.dart';
import 'package:intl/intl.dart';

class TransactionContainer extends StatelessWidget {
  final TransactionModel transaction;
  const TransactionContainer({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('MMMM d');
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text("Type: ${transaction.type}"),
                  content: Text(
                    "Category: ${transaction.category}\n"
                    "${transaction.type} Title: ${transaction.title}\n"
                    "Date: ${DateFormat("d MMMM yyyy").format(
                        DateTime.parse(transaction.date.toString()))}\n\n"
                    "Amount: ${transaction.amount}.tk\n\n"
                    "Description:\n${transaction.description}",
                    style: AppTheme.lightBodyText
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        height: 70,
        // color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      // color: Theme.of(context).colorScheme.primary,
                      color: Colors.deepPurple.shade50),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      Assets.homeSalary,
                      fit: BoxFit.scaleDown,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.24,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${transaction.category}",
                        style: AppTheme.lightBodyText,
                      ),
                      Text(
                        dateFormat.format(
                            DateTime.parse(transaction.date.toString())),
                        style: const TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                )
              ],
            ),
            Container(
              height: 60,
              width: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
            Text("${transaction.type}",
                style: AppTheme.lightBodyText
                    .copyWith(fontWeight: FontWeight.w500)),
            Container(
              height: 60,
              width: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width * 0.2,
                child: Text(
                  "Tk${transaction.amount?.toStringAsFixed(2)}",
                  style: AppTheme.lightBodyText,
                ))
          ],
        ),
      ),
    );
  }
}
