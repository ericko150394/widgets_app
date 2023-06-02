import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  static const String name = 'Card_Screen'; //Propiedad static para el go Router

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),
      body: const Placeholder()
    );
  }
}