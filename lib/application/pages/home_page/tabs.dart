import 'package:finance_tracker/application/core/widgets/transaction_container.dart';
import 'package:finance_tracker/di/di.dart';
import 'package:finance_tracker/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/widgets/exception_container.dart';
import '../transaction_page/bloc/transaction_bloc.dart';

class Tabs extends StatelessWidget {
  final String name;

  const Tabs({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<TransactionBloc>()
        ..add(HomePageTransactionDataRequestEvent(name)),
      child: const CustomTab(),
    );
  }
}

class CustomTab extends StatefulWidget {
  const CustomTab({super.key});

  @override
  State<CustomTab> createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  // final _controller = PageController(initialPage: 0);
  //
  //
  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   _controller.dispose();
  //   super.dispose();
  // }

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
                return TransactionContainer(
                  transaction: state.transactions[index],
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
