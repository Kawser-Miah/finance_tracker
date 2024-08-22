import 'package:finance_tracker/application/pages/data_insert_page/bloc/income_expense_add_bloc.dart';
import 'package:finance_tracker/application/pages/transaction_page/bloc/transaction_bloc.dart';
import 'package:finance_tracker/di/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import '../../../domain/models/transaction_model.dart';
import '../../../generated/assets.dart';
import '../../../utils/models/theme.dart';
import '../../../utils/strings.dart';
import '../../core/services/routing/app_router.dart';
import '../../core/services/routing/route_utils.dart';
import '../../core/widgets/exception_container.dart';
import '../../core/widgets/transaction_container.dart';
import '../home_page/bloc/home_page_bloc.dart';

class TransactionPageWrapperProvider extends StatelessWidget {
  const TransactionPageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(
          create: (_) =>
              getIt<HomePageBloc>()..add(const HomePageEvent.started())),
      BlocProvider(
          create: (_) =>
              getIt<TransactionBloc>()..add(const TransactionRequestEvent())),
      BlocProvider(create: (_) => getIt<IncomeExpenseAddBloc>()),
    ], child: const TransactionPage());
  }
}

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding:
              const EdgeInsets.only(top: 25, right: 20, left: 20, bottom: 5),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).colorScheme.primary,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Transaction",
                    style: AppTheme.lightHeadingText,
                  ),
                  SizedBox(
                    height: 35,
                    width: 35,
                    child: CircleAvatar(
                      radius: 17.5,
                      backgroundColor:
                          Theme.of(context).colorScheme.primaryContainer,
                      child: SvgPicture.asset(
                        Assets.homeNotification,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              BlocBuilder<HomePageBloc, HomePageState>(
                builder: (context, state) {
                  return Box(
                    totalIncome: state.totalBalance.totalIncome!,
                    totalExpense: state.totalBalance.totalExpense!,
                  );
                },
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.55,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Theme.of(context).colorScheme.onPrimary),
          child: BlocBuilder<TransactionBloc, TransactionState>(
              builder: (context, state) {
            if (state is TransactionDataLoadedState) {
              DateFormat dateFormat = DateFormat('MMMM yyyy');
              return Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: ListView.builder(
                    itemCount: state.months.length,
                    itemBuilder: (context, index) => Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                dateFormat.format(DateFormat("MM-yyyy")
                                    .parse(state.months[index])),
                                style: AppTheme.lightBodyText
                                    .copyWith(fontWeight: FontWeight.w500),
                              ),
                            ),
                            Column(
                              children: state.transaction
                                  .where((transaction) =>
                                      dateFormat.format(DateTime.parse(
                                          transaction.date.toString())) ==
                                      dateFormat.format(DateFormat("MM-yyyy")
                                          .parse(state.months[index])))
                                  .map((transaction) => Slidable(
                                        startActionPane: ActionPane(
                                            extentRatio: 0.3,
                                            motion: const StretchMotion(),
                                            children: [
                                              SlidableAction(
                                                onPressed: (context) {
                                                  AppRouter.router.push(
                                                      PAGES.insert.screenPath,
                                                      extra: [
                                                        Strings.update,
                                                        TransactionModel(
                                                            title: transaction
                                                                .title,
                                                            id: transaction.id,
                                                            category: (transaction
                                                                        .category ==
                                                                    Strings
                                                                        .others)
                                                                ? Strings
                                                                    .addOrOthers
                                                                : transaction
                                                                    .category,
                                                            type: transaction
                                                                .type,
                                                            amount: transaction
                                                                .amount,
                                                            description:
                                                                transaction
                                                                    .description,
                                                            date: transaction
                                                                .date),
                                                        PAGES.bottom.screenPath
                                                      ]);
                                                },
                                                icon: Icons.update_rounded,
                                                backgroundColor:
                                                    Theme.of(context)
                                                        .colorScheme
                                                        .primary,
                                                label: "Update",
                                              )
                                            ]),
                                        endActionPane: ActionPane(
                                            extentRatio: 0.3,
                                            motion: const StretchMotion(),
                                            children: [
                                              SlidableAction(
                                                onPressed: (context) {
                                                  context
                                                      .read<
                                                          IncomeExpenseAddBloc>()
                                                      .add(DeleteEvent(
                                                          id: transaction.id!,
                                                          type: transaction
                                                              .type!));
                                                  if (state.isSelect1) {
                                                    context
                                                        .read<TransactionBloc>()
                                                        .add(
                                                            const AllIncomesRequestEvent());
                                                  } else if (state.isSelect2) {
                                                    context
                                                        .read<TransactionBloc>()
                                                        .add(
                                                            const AllExpensesRequestEvent());
                                                  } else {
                                                    context
                                                        .read<TransactionBloc>()
                                                        .add(
                                                            const TransactionRequestEvent());
                                                  }
                                                  context
                                                      .read<HomePageBloc>()
                                                      .add(const HomePageEvent
                                                          .started());
                                                },
                                                icon: Icons.delete_rounded,
                                                backgroundColor:
                                                    Colors.red[700]!,
                                                label: "Delete",
                                              )
                                            ]),
                                        child: TransactionContainer(
                                          transaction: transaction,
                                        ),
                                      ))
                                  .toList(),
                            )
                          ],
                        )),
              );
            } else if (state is TransactionErrorState) {
              return ErrorMessage(
                message: state.errorMessage,
              );
            } else {
              return ErrorMessage(
                message: Strings.load,
              );
            }
          }),
        )
      ],
    );
  }
}

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
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Total Savings",
                style: AppTheme.lightBodyText,
              ),
              Text(
                "Tk${(widget.totalIncome - widget.totalExpense).toStringAsFixed(2)}",
                style: AppTheme.lightHeadingText,
              )
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
                  context
                      .read<TransactionBloc>()
                      .add(const AllIncomesRequestEvent());
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
                        : Theme.of(context).colorScheme.onPrimary),
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
                              : Colors.black),
                    ),
                    Text(
                      "Tk${widget.totalIncome.toStringAsFixed(2)}",
                      style: AppTheme.lightHeadingText.copyWith(
                          color: (isSelect1)
                              ? Theme.of(context).colorScheme.onPrimary
                              : Colors.black),
                    )
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
                  context
                      .read<TransactionBloc>()
                      .add(const AllExpensesRequestEvent());
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
                        : Theme.of(context).colorScheme.onPrimary),
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
                              : Colors.black),
                    ),
                    Text(
                      "Tk${widget.totalExpense.toStringAsFixed(2)}",
                      style: AppTheme.lightHeadingText.copyWith(
                          color: (isSelect2)
                              ? Theme.of(context).colorScheme.onPrimary
                              : Colors.blueAccent),
                    )
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
