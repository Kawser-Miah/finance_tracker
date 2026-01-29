import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../../../utils/models/theme.dart';
import '../../pages/transaction_page/bloc/transaction_bloc.dart';

class Box extends StatefulWidget {
  final double totalIncome, totalExpense;
  const Box({super.key, required this.totalIncome, required this.totalExpense});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  bool isSelect1 = false;
  bool isSelect2 = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
          height: 75,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Total Savings", style: AppTheme.lightBodyText),
              Text(
                "Tk${(widget.totalIncome - widget.totalExpense).toStringAsFixed(2)}",
                style: AppTheme.lightHeadingText,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  if (isSelect1 != true) {
                    isSelect1 = !isSelect1;
                    isSelect2 = !isSelect1;
                  }
                  context.read<TransactionBloc>().add(
                    const AllIncomesRequestEvent(),
                  );
                });
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10, right: 5, left: 10),
                height: 85,
                width: MediaQuery.of(context).size.width * 0.41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: (isSelect1)
                      ? Colors.blueAccent
                      : Theme.of(context).colorScheme.onPrimary,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Assets.homeIncome,
                      height: 20,
                      width: 20,
                      color: (isSelect1)
                          ? Theme.of(context).colorScheme.onPrimary
                          : Theme.of(context).colorScheme.primary,
                    ),
                    Text(
                      "Income",
                      style: AppTheme.lightBodyText.copyWith(
                        color: (isSelect1)
                            ? Theme.of(context).colorScheme.onPrimary
                            : Colors.black,
                      ),
                    ),
                    Text(
                      "Tk${widget.totalIncome.toStringAsFixed(2)}",
                      style: AppTheme.lightHeadingText.copyWith(
                        color: (isSelect1)
                            ? Theme.of(context).colorScheme.onPrimary
                            : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  if (isSelect2 != true) {
                    isSelect2 = !isSelect2;
                    isSelect1 = !isSelect2;
                  }
                  context.read<TransactionBloc>().add(
                    const AllExpensesRequestEvent(),
                  );
                });
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10, right: 10, left: 5),
                height: 85,
                width: MediaQuery.of(context).size.width * 0.41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: (isSelect2)
                      ? Colors.blueAccent
                      : Theme.of(context).colorScheme.onPrimary,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      Assets.homeExpense,
                      height: 20,
                      width: 20,
                      color: (isSelect2)
                          ? Theme.of(context).colorScheme.onPrimary
                          : Colors.blueAccent,
                    ),
                    Text(
                      "Expense",
                      style: AppTheme.lightBodyText.copyWith(
                        color: (isSelect2)
                            ? Theme.of(context).colorScheme.onPrimary
                            : Colors.black,
                      ),
                    ),
                    Text(
                      "Tk${widget.totalExpense.toStringAsFixed(2)}",
                      style: AppTheme.lightHeadingText.copyWith(
                        color: (isSelect2)
                            ? Theme.of(context).colorScheme.onPrimary
                            : Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
