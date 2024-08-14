import 'package:finance_tracker/application/core/services/routing/app_router.dart';
import 'package:finance_tracker/application/core/services/routing/route_utils.dart';
import 'package:finance_tracker/application/pages/category_page/bloc/category_bloc.dart';
import 'package:finance_tracker/di/di.dart';
import 'package:finance_tracker/utils/models/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../../core/widgets/income_expense_box.dart';
import '../home_page/bloc/home_page_bloc.dart';

class CategoryPageWrapperProvider extends StatelessWidget {
  const CategoryPageWrapperProvider({super.key});

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
      child: const CategoryPage(),
    );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding:
              const EdgeInsets.only(top: 25, right: 20, left: 20, bottom: 5),
          height: MediaQuery.of(context).size.height * 0.29,
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).colorScheme.primary,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
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
          height: MediaQuery.of(context).size.height * 0.56,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Theme.of(context).colorScheme.onPrimary),
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
                          onTap: () {
                            AppRouter.router.push(
                                PAGES.categoryDetails.screenPath,
                                extra: state.categories[index].name);
                          },
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 85,
                                width: 85,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(22),
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
        )
      ],
    );
  }
}
