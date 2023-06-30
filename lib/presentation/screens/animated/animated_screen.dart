import 'package:flutter/material.dart';
import 'dart:math' show Random;

class AnimatedScreen extends StatefulWidget {
  static const name = 'animated_screen';

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double width = 50;
  double height = 50;
  Color color = Colors.purple;
  double border = 10.0;

  void changeShape() {
    final random = Random();
    width = random.nextInt(300) +
        50; //Valor minimo es 50. Random dara un numero entre 0-300 + 50
    height = random.nextInt(300) + 50;
    //color = Color((random.nextDouble() * 0xFF9C27B0).toInt());
    color = Color.fromRGBO(
      random.nextInt(255), //red
      random.nextInt(255), //green
      random.nextInt(255), //blue
      1, //opacidad
    );
    border = random.nextDouble() * 30.0;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.elasticOut, //Tipo de animación
          width: width <= 0 ? 0 : width, //Si el width es menor a 0, -1 o -15, el valor de width sera 0
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(border)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_outlined),
      ),
    );
  }
}
