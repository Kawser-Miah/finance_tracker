import 'package:finance_tracker/application/core/services/routing/app_router.dart';
import 'package:finance_tracker/application/core/services/routing/route_utils.dart';
import 'package:finance_tracker/domain/models/transaction_model.dart';
import 'package:finance_tracker/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../domain/models/income_expense_category.dart';
import '../../../utils/models/theme.dart';
import '../../../utils/strings.dart';
import 'bloc/income_expense_add_bloc.dart';

class AllField extends StatefulWidget {
  final String type;

  final String category;
  const AllField({super.key, required this.type, required this.category});

  @override
  State<AllField> createState() => _AllFieldState();
}

class _AllFieldState extends State<AllField> {
  String? defaultValue;
  List<Category>? items;
  @override
  void initState() {
    super.initState();
    if (widget.type == Strings.expense) {
      if (widget.category != "Salary") {
        defaultValue = widget.category;
      } else {
        defaultValue = "Food";
      }
    } else {
      defaultValue = "Salary";
    }
    if (widget.type == Strings.expense) {
      items = Utils.categoriesList.where((e) => e.name != "Salary").toList();
    } else {
      items = Utils.categoriesList
          .where((e) => e.name == "Salary" || e.name == "Add/Others")
          .toList();
    }
  }

  final dateController = TextEditingController(
      text: DateFormat('yyyy-MM-dd').format(DateTime.now()));
  final amountController = TextEditingController();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<IncomeExpenseAddBloc, IncomeExpenseAddState>(
      builder: (context, state) {
        if (state is SuccessedState) {
          FocusScope.of(context).unfocus();


          SchedulerBinding.instance.addPostFrameCallback((_) {
            // Navigator.of(context).pop();
            AppRouter.router.pushReplacement(PAGES.categoryDetails.screenPath,
                extra: widget.category);
          });
        }
        return CustomScrollView(
          scrollDirection: Axis.vertical,
          reverse: true,
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Date',
                      style: AppTheme.lightBodyText,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: dateController,
                    readOnly: true,
                    onTap: () {
                      _widget(dateController.text);
                    },
                    decoration: InputDecoration(
                        suffixIcon: Container(
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Theme.of(context).colorScheme.primary),
                          child: const Icon(Icons.calendar_month_outlined),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                        fillColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        filled: true),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Category',
                      style: AppTheme.lightBodyText,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InputDecorator(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(30),
                        )),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                          value: defaultValue,
                          isDense: true,
                          isExpanded: true,
                          // menuMaxHeight: 350,
                          items: [
                            ...?items?.map<DropdownMenuItem<String>>((e) {
                              return DropdownMenuItem(
                                value: e.name,
                                child: Text(e.name),
                              );
                            })
                          ],
                          onChanged: (value) {
                            setState(() {
                              defaultValue = value!;
                              context.read<IncomeExpenseAddBloc>().add(
                                  TextFieldTextChangeEvent(
                                      category: defaultValue!,
                                      type: widget.type,
                                      title: titleController.text,
                                      amount: amountController.text,
                                      description: descriptionController.text,
                                      date: dateController.text));
                            });
                          }),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Amount*',
                      style: AppTheme.lightBodyText,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    keyboardType: TextInputType.number,
                    controller: amountController,
                    onChanged: (value) {
                      context.read<IncomeExpenseAddBloc>().add(
                          TextFieldTextChangeEvent(
                              category: defaultValue!,
                              type: widget.type,
                              title: titleController.text,
                              amount: amountController.text,
                              description: descriptionController.text,
                              date: dateController.text));
                    },
                    decoration: InputDecoration(
                        errorText: (state is AmountNullState)
                            ? state.errorMessage
                            : null,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                        fillColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        filled: true),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      '${widget.type} Title*',
                      style: AppTheme.lightBodyText,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextField(
                    controller: titleController,
                    onChanged: (value) {
                      context.read<IncomeExpenseAddBloc>().add(
                          TextFieldTextChangeEvent(
                              category: defaultValue!,
                              type: widget.type,
                              title: titleController.text,
                              amount: amountController.text,
                              description: descriptionController.text,
                              date: dateController.text));
                    },
                    decoration: InputDecoration(
                        errorText: (state is TitleNullState)
                            ? state.errorMessage
                            : null,
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(30)),
                        fillColor:
                            Theme.of(context).colorScheme.primaryContainer,
                        filled: true),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Description',
                      style: AppTheme.lightBodyText,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 150,
                    child: TextField(
                      textAlign: TextAlign.start,
                      textAlignVertical: TextAlignVertical.top,
                      expands: true,
                      maxLines: null,
                      controller: descriptionController,
                      onChanged: (value) {
                        context.read<IncomeExpenseAddBloc>().add(
                            TextFieldTextChangeEvent(
                                category: defaultValue!,
                                type: widget.type,
                                title: titleController.text,
                                amount: amountController.text,
                                description: descriptionController.text,
                                date: dateController.text));
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(30)),
                          fillColor:
                              Theme.of(context).colorScheme.primaryContainer,
                          filled: true),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                          ),
                          onPressed: (state is AllValidState)
                              ? () {
                                  context.read<IncomeExpenseAddBloc>().add(
                                      SubmitToDataBaseEvent(
                                          transaction: TransactionModel(
                                              category: state.category,
                                              type: state.type,
                                              title: state.title,
                                              amount: state.amount,
                                              description: state.description,
                                              date: state.date,
                                              id: 0)));
                                }
                              : null,
                          child: Text(
                            "Save",
                            style: AppTheme.lightBodyText
                                .copyWith(fontWeight: FontWeight.w500),
                          )))
                ],
              ),
            )
          ],
        );
      },
    );
  }

  _widget(String initialDate) async {
    var date = await showDatePicker(
      context: context,
      initialDate: DateTime.parse(initialDate),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (date != null) {
      dateController.text = DateFormat('yyyy-MM-dd').format(date);
      if (mounted) {
        context.read<IncomeExpenseAddBloc>().add(TextFieldTextChangeEvent(
            category: defaultValue!,
            type: widget.type,
            title: titleController.text,
            amount: amountController.text,
            description: descriptionController.text,
            date: dateController.text));
      }
    }
    // print(date);
  }
}