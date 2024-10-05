import 'package:finance_tracker/application/core/widgets/transaction_container.dart';
import 'package:finance_tracker/application/pages/data_insert_page/bloc/income_expense_add_bloc.dart';
import 'package:finance_tracker/di/di.dart';
import 'package:finance_tracker/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../domain/models/transaction_model.dart';
import '../../core/services/routing/app_router.dart';
import '../../core/services/routing/route_utils.dart';
import '../../core/widgets/exception_container.dart';
import '../transaction_page/bloc/transaction_bloc.dart';
import 'bloc/home_page_bloc.dart';

class Tabs extends StatelessWidget {
  final String name;

  const Tabs({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<TransactionBloc>()
            ..add(HomePageTransactionDataRequestEvent(name)),
        ),
        BlocProvider(create: (_) => getIt<IncomeExpenseAddBloc>()),
      ],
      child: CustomTab(
        name: name,
      ),
    );
  }
}

class CustomTab extends StatefulWidget {
  final String name;
  const CustomTab({super.key, required this.name});

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionBloc, TransactionState>(
      builder: (context, state) {
        if (state is LoadingState || state is Initial) {
          return ErrorMessage(
            message: Strings.load,
          );
        }
        if (state is HomePageTransactionDataLoadedState) {
          return ListView.builder(
              itemCount: state.transactions.length,
              itemBuilder: (context, index) {
                final transaction = state.transactions[index];
                return Slidable(
                  startActionPane: ActionPane(
                      extentRatio: 0.3,
                      motion: const StretchMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            AppRouter.router
                                .push(PAGES.insert.screenPath, extra: [
                              Strings.update,
                              TransactionModel(
                                  title: transaction.title,
                                  id: transaction.id,
                                  category:
                                      (transaction.category == Strings.others)
                                          ? Strings.addOrOthers
                                          : transaction.category,
                                  type: transaction.type,
                                  amount: transaction.amount,
                                  description: transaction.description,
                                  date: transaction.date),
                              PAGES.bottom.screenPath
                            ]);
                          },
                          icon: Icons.update_rounded,
                          backgroundColor:
                              Theme.of(context).colorScheme.primary,
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
                                DeleteEvent(
                                    id: transaction.id!,
                                    type: transaction.type!));
                            context.read<TransactionBloc>().add(
                                HomePageTransactionDataRequestEvent(
                                    widget.name));
                            context
                                .read<HomePageBloc>()
                                .add(const HomePageEvent.started());
                          },
                          icon: Icons.delete_rounded,
                          backgroundColor: Colors.red[700]!,
                          label: "Delete",
                        )
                      ]),
                  child: TransactionContainer(
                    transaction: state.transactions[index],
                  ),
                );
              });
        }
        if (state is TransactionErrorState) {
          return ErrorMessage(message: state.errorMessage);
        } else {
          return ErrorMessage(
            message: Strings.load,
          );
        }
      },
    );
  }
}
