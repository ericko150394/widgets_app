import 'package:flutter/material.dart';
import 'package:proyecto12_widget_app/config/router/app_router.dart';
import 'package:proyecto12_widget_app/config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router( //<---  Añadimos .router
      title: 'Flutter Widgets',
      routerConfig: appRouter, //<-- Declara la propiedad para configurar el router
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getTheme(),
      //home: const HomeScreen(), //<-- Omitimos esta linea para usar nuestro app_router
    );
  }
}
