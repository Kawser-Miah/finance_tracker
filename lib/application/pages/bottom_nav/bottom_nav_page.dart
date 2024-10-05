import 'package:finance_tracker/application/pages/bottom_nav/bloc/bottom_bloc.dart';
import 'package:finance_tracker/application/pages/home_page/home_page.dart';
import 'package:finance_tracker/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../analysis_page/analysis_page.dart';
import '../category_page/category_page.dart';
import '../settings_page/settings_page.dart';
import '../transaction_page/transaction_page.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBloc, BottomState>(builder: (context, state) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildPage(state.currentIndex),
        bottomNavigationBar: NavigationBar(
          selectedIndex: state.currentIndex,
          onDestinationSelected: (int index) {
            context.read<BottomBloc>().add(ChangeBottomEvent(index));
          },
        ),
      );
    });
  }

  Widget _buildPage(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return const HomePageWrapperProvider();
      case 1:
        return const AnalysisPageWrapperProvider();
      case 2:
        return const TransactionPageWrapperProvider();
      case 3:
        return const CategoryPageWrapperProvider();
      case 4:
        return const SettingsPageWrapperProvider();
      default:
        return const HomePageWrapperProvider();
    }
  }
}

class NavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onDestinationSelected;
  const NavigationBar(
      {super.key,
      required this.selectedIndex,
      required this.onDestinationSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          border: const Border(top: BorderSide.none)),
      height: 98,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(65), topLeft: Radius.circular(65)),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          currentIndex: selectedIndex,
          onTap: onDestinationSelected,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(
                  Icons.home_outlined,
                  size: 30,
                  color: Colors.black,
                ),
                activeIcon: Container(
                  height: 47,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.home_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.bottomNavIconAnalysis,
                  height: 30,
                  width: 30,
                ),
                activeIcon: Container(
                    height: 47,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(20)),
                    child: SvgPicture.asset(
                      Assets.bottomNavIconAnalysis,
                      fit: BoxFit.scaleDown,
                    )),
                label: "Analytics"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.bottomNavIconTransactions,
                  height: 30,
                  width: 30,
                ),
                activeIcon: Container(
                    height: 47,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(20)),
                    child: SvgPicture.asset(
                      Assets.bottomNavIconTransactions,
                      fit: BoxFit.scaleDown,
                    )),
                label: "Transaction"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.bottomNavIconCategory,
                  height: 30,
                  width: 30,
                ),
                activeIcon: Container(
                    height: 47,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(20)),
                    child: SvgPicture.asset(
                      Assets.bottomNavIconCategory,
                      fit: BoxFit.scaleDown,
                    )),
                label: "Category"),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  Assets.bottomNavIconProfile,
                  height: 30,
                  width: 30,
                ),
                activeIcon: Container(
                  height: 47,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20)),
                  child: SvgPicture.asset(
                    Assets.bottomNavIconProfile,
                    fit: BoxFit.scaleDown,
                  ),
                ),
                label: "Profile"),
          ],
        ),
      ),
    );
  }
}
