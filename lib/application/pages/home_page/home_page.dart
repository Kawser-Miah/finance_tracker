import 'package:finance_tracker/application/pages/home_page/bloc/home_page_bloc.dart';
import 'package:finance_tracker/di/di.dart';
import 'package:finance_tracker/utils/models/theme.dart';
import 'package:finance_tracker/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../generated/assets.dart';
import '../../../utils/strings.dart';
import '../../core/widgets/income_expense_box.dart';
import 'tabs.dart';

class HomePageWrapperProvider extends StatelessWidget {
  const HomePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<HomePageBloc>()..add(const HomePageEvent.started()),
      child: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageBloc, HomePageState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 25, right: 20, left: 20, bottom: 5),
              height: MediaQuery.of(context).size.height * 0.29,
              width: MediaQuery.of(context).size.width,
              color: Theme.of(context).colorScheme.primary,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("Hi, Welcome Back",
                              style: AppTheme.lightHeadingText),
                          Text(
                            Utils.getGreeting(),
                            style:
                                AppTheme.lightBodyText.copyWith(fontSize: 15),
                          )
                        ],
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
                  IncomeExpenseBox(
                    totalIncome: state.totalBalance.totalIncome,
                    totalExpense: state.totalBalance.totalExpense,
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 25, right: 20, left: 20),
              height: MediaQuery.of(context).size.height * 0.56,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  color: Theme.of(context).colorScheme.onPrimary),
              child: Column(
                children: [
                  Container(
                    height: 152,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(31),
                        color: Theme.of(context).colorScheme.primary),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircularPercentIndicator(
                                radius: 40,
                                percent: 0.5,
                                progressColor: Colors.deepPurpleAccent,
                                backgroundColor:
                                    Theme.of(context).colorScheme.onPrimary,
                                center: SvgPicture.asset(Assets.homeCar),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Savings\nOn Goals",
                                    style: AppTheme.lightBodyText
                                        .copyWith(fontSize: 14),
                                  ))
                            ],
                          ),
                          Container(
                            height: 110,
                            width: 2,
                            color: Theme.of(context).colorScheme.onPrimary,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _widgetBox(context, "Revenue Last Month",
                                  Assets.homeSalary, state.totalBalance.savingsLastMonth),
                              Container(
                                width: 185,
                                height: 2,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                              _widgetBox(context, "${state.totalBalance.bestExpense?.category} Last Week",
                                  Utils.getWeeklyCategoryImage(state.totalBalance.bestExpense!.category), state.totalBalance.bestExpense?.total_expense)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
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
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
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
                                  text: "Weekly",
                                ),
                                Tab(
                                  text: "Monthly",
                                )
                              ],
                              controller: _controller,
                            ),
                          ),
                          SizedBox(
                            // height: 223,
                            height: MediaQuery.of(context).size.height * 0.2655,
                            child:
                                TabBarView(controller: _controller, children: [
                              Tabs(
                                name: Strings.daily,
                              ),
                              Tabs(
                                name: Strings.weekly,
                              ),
                              Tabs(
                                name: Strings.monthly,
                              )
                            ]),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }

  Widget _widgetBox(
      BuildContext context, String msg, String image, double? amount) {
    return Row(
      children: [
        SvgPicture.asset(
          image,
          height: 40,
          width: 40,
          color: Colors.black,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              msg,
              style: const TextStyle(fontSize: 16),
            ),
            Text(
              "Tk ${amount?.toStringAsFixed(2)}",
              style: AppTheme.lightBodyText,
            )
          ],
        )
      ],
    );
  }
}
