import 'package:finance_tracker/application/pages/category_details_page/bloc/category_details_bloc.dart';
import 'package:finance_tracker/application/pages/data_insert_page/bloc/income_expense_add_bloc.dart';
import 'package:finance_tracker/application/pages/home_page/bloc/home_page_bloc.dart';
import 'package:finance_tracker/domain/models/transaction_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import '../../../generated/assets.dart';
import '../../../utils/models/theme.dart';
import 'package:intl/intl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../utils/strings.dart';
import '../services/routing/app_router.dart';
import '../services/routing/route_utils.dart';

class CategoryDetailsContainer extends StatelessWidget {
  final TransactionModel transaction;
  const CategoryDetailsContainer({
    super.key,
    required this.transaction,
  });

  @override
  Widget build(BuildContext context) {
    DateFormat dateFormat = DateFormat('MMMM d');
    return Slidable(
      startActionPane: ActionPane(
          extentRatio: 0.3,
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                AppRouter.router.push(PAGES.insert.screenPath, extra: [
                  Strings.update,
                  TransactionModel(
                      title: transaction.title,
                      id: transaction.id,
                      category: (transaction.category == Strings.others)
                          ? Strings.addOrOthers
                          : transaction.category,
                      type: transaction.type,
                      amount: transaction.amount,
                      description: transaction.description,
                      date: transaction.date),
                  PAGES.categoryDetails.screenPath
                ]);
              },
              icon: Icons.update_rounded,
              backgroundColor: Theme.of(context).colorScheme.primary,
              label: "Update",
            )
          ]),
      endActionPane: ActionPane(
          extentRatio: 0.3,
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                context.read<IncomeExpenseAddBloc>().add(
                    DeleteEvent(id: transaction.id!, type: transaction.type!));
                context.read<CategoryDetailsBloc>().add(
                    CategoryDetailsEvent.started(
                        category: transaction.category!));
                context.read<HomePageBloc>().add(const HomePageEvent.started());
              },
              icon: Icons.delete_rounded,
              backgroundColor: Colors.red[700]!,
              label: "Delete",
            )
          ]),
      child: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                    title:
                        Text("${transaction.type} Title: ${transaction.title}"),
                    content: Text(
                      "ID: ${transaction.id}\nDescription:\n${transaction.description}",
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
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${transaction.title}",
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
              SizedBox(
                  width: MediaQuery.of(context).size.width * 0.22,
                  child: Text(
                    "Tk${transaction.amount}",
                    style: AppTheme.lightBodyText,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
