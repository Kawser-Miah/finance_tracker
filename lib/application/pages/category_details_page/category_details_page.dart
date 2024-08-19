import 'package:finance_tracker/application/core/services/routing/app_router.dart';
import 'package:finance_tracker/application/pages/category_details_page/bloc/category_details_bloc.dart';
import 'package:finance_tracker/application/pages/data_insert_page/bloc/income_expense_add_bloc.dart';
import 'package:finance_tracker/di/di.dart';
import 'package:finance_tracker/domain/models/transaction_model.dart';
import 'package:finance_tracker/utils/models/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../../../utils/strings.dart';
import '../../core/services/routing/route_utils.dart';
import '../../core/widgets/category_details_container.dart';
import '../../core/widgets/exception_container.dart';
import '../../core/widgets/income_expense_box.dart';

import '../home_page/bloc/home_page_bloc.dart';

class CategoryDetailsPage extends StatelessWidget {
  final String category;

  const CategoryDetailsPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<HomePageBloc>()..add(const HomePageEvent.started()),
        ),
        BlocProvider(
          create: (_) => getIt<CategoryDetailsBloc>()
            ..add(CategoryDetailsEvent.started(category: category)),
        ),
        BlocProvider(create: (_)=>getIt<IncomeExpenseAddBloc>())
      ],
      child: CustomCategoryDetailsPage(
        category: category,
      ),
    );
  }
}

class CustomCategoryDetailsPage extends StatelessWidget {
  final String category;
  const CustomCategoryDetailsPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 45, right: 16, left: 16, bottom: 5),
            height: MediaQuery.of(context).size.height * 0.31,
            width: MediaQuery.of(context).size.width,
            color: Theme.of(context).colorScheme.primary,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        // iconSize: 20,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          // size: 20,
                        )),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      category,
                      style: AppTheme.lightHeadingText,
                    ),
                  ],
                ),
                BlocBuilder<HomePageBloc, HomePageState>(
                  builder: (context, state) {
                    return IncomeExpenseBox(
                      totalIncome: state.totalBalance.totalIncome,
                      totalExpense: state.totalBalance.totalExpense,
                    );
                  },
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(right: 20, left: 20),
            height: MediaQuery.of(context).size.height * 0.69,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50)),
                color: Theme.of(context).colorScheme.onPrimary),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: BlocBuilder<CategoryDetailsBloc, CategoryDetailsState>(
                    builder: (context, state) {
                      if (state is CategoryDetailsLoadedState) {
                        DateFormat dateFormat = DateFormat('MMMM yyyy');
                        return ListView.builder(
                            itemCount: state.months.length,
                            itemBuilder: (context, index) => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        dateFormat.format(DateFormat("MM-yyyy")
                                            .parse(state.months[index])),
                                        style: AppTheme.lightBodyText.copyWith(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Column(
                                      children: state.transactions
                                          .where((transaction) =>
                                              dateFormat.format(DateTime.parse(
                                                  transaction.date
                                                      .toString())) ==
                                              dateFormat.format(
                                                  DateFormat("MM-yyyy").parse(
                                                      state.months[index])))
                                          .map((transaction) =>
                                              CategoryDetailsContainer(
                                                transaction: transaction,
                                              ))
                                          .toList(),
                                    )
                                  ],
                                ));
                      } else if (state is CategoryDetailsErrorState) {
                        return ErrorMessage(message: state.errorMessage);
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 20),
                  height: MediaQuery.of(context).size.height * 0.05,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          AppRouter.router
                              .push(PAGES.insert.screenPath, extra: [
                            Strings.add,
                            TransactionModel(
                                title: "",
                                id: 0,
                                category: category,
                                type: Strings.income,
                                amount: 0,
                                description: "",
                                date: DateFormat('yyyy-MM-dd')
                                    .format(DateTime.now())),
                            PAGES.categoryDetails.screenPath
                          ]);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 2, bottom: 2),
                          width: MediaQuery.of(context).size.width * 0.43,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child: Text("Add Income",
                                  style: AppTheme.lightBodyText
                                      .copyWith(fontWeight: FontWeight.w500))),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          AppRouter.router
                              .push(PAGES.insert.screenPath, extra: [
                            Strings.add,
                            TransactionModel(
                                title: "",
                                id: 0,
                                category: category,
                                type: Strings.expense,
                                amount: 0,
                                description: '',
                                date: DateFormat('yyyy-MM-dd')
                                    .format(DateTime.now())),
                            PAGES.categoryDetails.screenPath
                          ]);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 2, bottom: 2),
                          width: MediaQuery.of(context).size.width * 0.43,
                          decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                              child: Text("Add Expense",
                                  style: AppTheme.lightBodyText
                                      .copyWith(fontWeight: FontWeight.w500))),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
