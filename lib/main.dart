import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto12_widget_app/config/router/app_router.dart';
import 'package:proyecto12_widget_app/config/theme/app_theme.dart';
import 'package:proyecto12_widget_app/presentation/providers/theme_provider.dart';

void main() {
  runApp(
    const ProviderScope( //Este mantiene una referencia a todos los providers que utilicemos
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    //USANDO PROVIDER EN main.dart

    //(1) Llamando a 2 provider para el color y el modo:
    /* final isDarkMode = ref.watch(isDarkModeProvider);
    final int indexColor = ref.watch(selectedIndexColorProvider);

    return MaterialApp.router(
      //<---  Añadimos .router
      title: 'Flutter Widgets',
      routerConfig:
          appRouter, //<-- Declara la propiedad para configurar el router
      debugShowCheckedModeBanner: false,
      theme: AppTheme(isDarkMode: isDarkMode, selectedColor: indexColor).getTheme(),
      //home: const HomeScreen(), //<-- Omitimos esta linea para usar nuestro app_router
    ); */


    //(2) Llamando un unico provider para el tema completo:
    //Llamamos a themeNotifierProvider aquí:
    final apptheme = ref.watch(themeNotifierProvider);

    return MaterialApp.router(
      //<---  Añadimos .router
      title: 'Flutter Widgets',
      routerConfig:
          appRouter,
      debugShowCheckedModeBanner: false,
      theme: apptheme.getTheme() //<-- El objeto apptheme ya lo convocamos acá, omitiendno
      //home: const HomeScreen(), //<-- Omitimos esta linea para usar nuestro app_router
    );
  }
}
