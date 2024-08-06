import 'package:flutter/material.dart';

class SettingsPageWrapperProvider extends StatelessWidget {
  const SettingsPageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding:
          const EdgeInsets.only(top: 25, right: 20, left: 20, bottom: 5),
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).colorScheme.primary,
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.55,
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
