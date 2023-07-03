import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkMode;

  const AppTheme({ this.isDarkMode = false, 
    this.selectedColor = 0,
  }): assert(selectedColor >= 0, 'Selected color must be greater than 0'),
      assert(selectedColor < colorList.length, 'Selected color must be less o equal than ${colorList.length - 1}');

  ThemeData getTheme()  => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode ? Brightness.dark: Brightness.light,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: const AppBarTheme(
      centerTitle: false
    ),
  );

  //Manipularemos el estado de los parametros final: 
  AppTheme copyWith({ //<-- copyWith sirve para copiar la instancia de la clase y expandirlo a otras propiedades
    //Dichas propiedades son opcionales '?'
    int? selectedColor,
    bool? isDarkMode
  }) => AppTheme(
    selectedColor: selectedColor ?? this.selectedColor,
    isDarkMode: isDarkMode ?? this.isDarkMode
  ); //<-- Devuelve una nueva instancia del AppTheme
}

//NOTAS método copyWith:
//El 'selectedColor' es igual al 'selectedColor' (argumento) enviado pero al ser opcional '?'
//Si no se envia un argumento '??' usamos el 'selectedColor' que pertenece a la clase: 'this.selectedColor'
//Con esto creamos literalmente un nuevo estado
