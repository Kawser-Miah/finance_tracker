import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import '../../../generated/assets.dart';
import '../../core/services/routing/app_router.dart';
import '../../core/services/routing/route_utils.dart';

class WishPage extends StatefulWidget {
  const WishPage({super.key});

  @override
  State<WishPage> createState() => _WishPageState();
}

class _WishPageState extends State<WishPage> {
  // final player = AudioPlayer();
  int timeLeft = 10;
  @override
  void initState() {
    audio();
    startCountDown();

    // TODO: implement initState
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
        AppRouter.router.pushReplacement(PAGES.bottom.screenPath);
      }
    });
  }
  void audio(){
    final player = AudioPlayer();
    player.play(AssetSource('font/Birthday1.mp3'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 100,
                width: 350,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 0.7, color: Colors.grey)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Happy Birthday my dearest bestie LADDU..!",
                    style: TextStyle(
                        fontFamily: "Schyler",
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Center(
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 5,
              child: Stack(
                children: [
                  Container(
                    height: 300,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primaryContainer,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(width: 0.7, color: Colors.grey)),
                    child: Image.asset(Assets.fontBirthday2),
                  ),
                  const Positioned(
                    left: 120,
                    bottom: 120,
                    child: SizedBox(
                        height: 150,
                        width: 150,
                        child: Image(
                          image: AssetImage(Assets.fontAnimatedTrophy),
                          fit: BoxFit.cover,
                        )),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          Center(
            child: Material(
              borderRadius: BorderRadius.circular(20),
              elevation: 5,
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 0.7, color: Colors.grey)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You are really different\nfrom the whole world..\nfeel beautiful with you every day.",
                        style: TextStyle(
                            fontFamily: "Schyler",
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      Text("Happy Birthday..!!",style: TextStyle(
                          fontFamily: "Schyler",
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
