import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static const String name = 'Button_Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop(); //Regresamos a la anterior pantalla
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
  
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 20,
        ),
        //Wrap  similar a Row o Column, alineara de izquiera derecha y al acabarse el espacio hara un salto de linea para seguir alineando más
        child: Wrap(
          spacing: 10, //Esto añadira un espacio entre los elementos del wrap
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(
                onPressed: null, child: Text('Elevated Disabled')),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_balance_rounded),
              label: const Text(
                'Elevated Icon',
              ),
            ),
            FilledButton(onPressed: () {}, child: const Text('Filled')),
            FilledButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.gamepad),
                label: const Text('Filled Icon')),
            OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.videogame_asset),
                label: const Text('Outlined Icon')),
            TextButton(onPressed: () {}, child: const Text('TextButton')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.work_outline),
                label: const Text('TextButton')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.draw)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.phone_in_talk),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white)
              ),
            )
          ],
        ),
      ),
    );
  }
}
