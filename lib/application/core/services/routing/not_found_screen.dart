import 'package:flutter/material.dart';
import '../../widgets/empty_placeholder_screen.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EmptyPlaceholderWidget(
        message: '404 - Page not found!',
      ),
    );
  }
}
