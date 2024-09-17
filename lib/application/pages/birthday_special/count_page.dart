import 'dart:async';

import 'package:finance_tracker/application/core/services/routing/app_router.dart';
import 'package:finance_tracker/application/core/services/routing/route_utils.dart';
import 'package:flutter/material.dart';

class BirthdayPage extends StatefulWidget {
  const BirthdayPage({super.key});

  @override
  State<BirthdayPage> createState() => _BirthdayPageState();
}

class _BirthdayPageState extends State<BirthdayPage>
    with SingleTickerProviderStateMixin {
  int timeLeft = 10;
  @override
  void initState() {
    // TODO: implement initState
    startCountDown();
    super.initState();

  }



  void startCountDown() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
        AppRouter.router.pushReplacement(PAGES.wish.screenPath);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 320,
          ),
          Center(
            child: Text(
              "$timeLeft",
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 70,
              fontFamily: "Schyler"),
            ),
          ),
          const SizedBox(
            height: 230,
          ),
          Material(
            borderRadius: BorderRadius.circular(20),
            elevation: 3,
            child: Container(
                padding: const EdgeInsets.all(10),
                height: 120,
                width: 300,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 0.7, color: Colors.grey)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "The wait is over! I can’t wait to celebrate your special day with you..!",
                    style: TextStyle(
                        fontFamily: "Schyler",
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
