import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static const String name = 'Button_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const Placeholder()
    );
  }
}