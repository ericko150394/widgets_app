import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto12_widget_app/presentation/providers/theme_provider.dart';

class ThemeChangerScreen extends ConsumerWidget {
  static String name = 'theme_app';

  const ThemeChangerScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    //final isDarkMode = ref.watch(isDarkModeProvider); //Usando isDarkModeProvider (ANTES)
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;//Usando themeProvider

    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Changer'),
        actions: [
          IconButton(
              icon: isDarkMode
                  ? Icon(Icons.dark_mode_outlined)
                  : Icon(Icons.light_mode_outlined),
              onPressed: () {
                //ref.read(isDarkModeProvider.notifier).update((state) => !state); //Usando isDarkModeProvider (ANTES)
                ref.read(themeNotifierProvider.notifier).toogleDarkMode(); //Usando themeProvider
              }),
        ],
      ),
      body: _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {
  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    //final int indexColor = ref.watch(selectedIndexColorProvider);
    final int indexColor = ref.watch(themeNotifierProvider).selectedColor;

    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return RadioListTile(
          title: Text('Este color es', style: TextStyle(color: colors[index]),),
          subtitle: Text('${colors[index].value}'),
          activeColor: colors[index],
          value: index,
          groupValue: indexColor,
          onChanged: (value) {
            //ref.read(selectedIndexColorProvider.notifier).state = value!;
            ref.read(themeNotifierProvider.notifier).changeColorIndex(value!);
          },
        );
      },
    );
  }
}
