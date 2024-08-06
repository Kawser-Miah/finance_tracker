import 'package:finance_tracker/utils/models/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../generated/assets.dart';
import '../../core/widgets/income_expense_box.dart';

class CategoryPageWrapperProvider extends StatelessWidget {
  const CategoryPageWrapperProvider({super.key});

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
                const Text("Categories",style: AppTheme.lightHeadingText,),
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
              ],),
              IncomeExpenseBox(
                totalIncome: 50000,
                totalExpense: 30000,
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.56,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Theme.of(context).colorScheme.onPrimary),
        )
      ],
    );
  }
}
