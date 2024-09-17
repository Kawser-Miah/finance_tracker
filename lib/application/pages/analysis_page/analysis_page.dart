import 'package:finance_tracker/application/core/widgets/income_expense_box.dart';
import 'package:finance_tracker/application/pages/home_page/bloc/home_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../di/di.dart';
import '../../../generated/assets.dart';
import '../../../utils/models/theme.dart';

class AnalysisPageWrapperProvider extends StatelessWidget {
  const AnalysisPageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) =>
                getIt<HomePageBloc>()..add(const HomePageEvent.started()))
      ],
      child: const AnalysisPage(),
    );
  }
}

class AnalysisPage extends StatefulWidget {
  const AnalysisPage({super.key});

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage>
    with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

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
                    "Analysis",
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
                  builder: (context, state) => IncomeExpenseBox(
                      totalIncome: state.totalBalance.totalIncome,
                      totalExpense: state.totalBalance.totalExpense)),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
          height: MediaQuery.of(context).size.height * 0.56,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Theme.of(context).colorScheme.onPrimary),
          child: Column(
            children: [
              DefaultTabController(
                  length: 3,
                  child: Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22),
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                          ),
                          child: TabBar(
                            indicatorPadding: const EdgeInsets.all(7),
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelColor: Colors.black,
                            indicator: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Theme.of(context).colorScheme.primary),
                            dividerColor: Colors.transparent,
                            tabs: const [
                              Tab(
                                text: "Daily",
                              ),
                              Tab(
                                text: "Monthly",
                              ),
                              Tab(
                                text: "Yearly",
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        )
      ],
    );
  }
}
