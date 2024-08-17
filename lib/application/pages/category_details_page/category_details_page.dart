import 'package:finance_tracker/application/core/services/routing/app_router.dart';
import 'package:finance_tracker/application/pages/category_page/bloc/category_bloc.dart';
import 'package:finance_tracker/di/di.dart';
import 'package:finance_tracker/domain/models/transaction_model.dart';
import 'package:finance_tracker/utils/models/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import '../../../utils/strings.dart';
import '../../core/services/routing/route_utils.dart';
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
          create: (_) =>
              getIt<CategoryBloc>()..add(const CategoryRequestEvent()),
        )
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
                  child: BlocBuilder<CategoryBloc, CategoryState>(
                    builder: (context, state) {
                      if (state is CategoryLoadedState) {
                        return GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: 1,
                              mainAxisSpacing: 30,
                              crossAxisSpacing: 12,
                            ),
                            itemCount: state.categories.length,
                            itemBuilder: (context, index) => InkWell(
                                  onTap: () {},
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        height: 85,
                                        width: 85,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(22),
                                            // color: Theme.of(context).colorScheme.primary,
                                            color: Colors.deepPurple.shade50),
                                        child: SvgPicture.asset(
                                          state.categories[index].img,
                                          color: Colors.black,
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                      Text(
                                        state.categories[index].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                ));
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
                          //     .then((_) {
                          //   context
                          //       .read<HomePageBloc>()
                          //       .add(const HomePageEvent.started());
                          // });
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
                          //     .then((_) {
                          //   context
                          //       .read<HomePageBloc>()
                          //       .add(const HomePageEvent.started());
                          // });
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
