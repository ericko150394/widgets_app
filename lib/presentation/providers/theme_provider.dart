import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto12_widget_app/config/theme/app_theme.dart';

//Lista de colores inmutable
final colorListProvider = Provider((ref) => colorList); //Provider - Para valores inmutables

//Un simple booleano
final isDarkModeProvider = StateProvider((ref) => false); //StateProvider - Mantener el estado

//Un simple entero
final selectedIndexColorProvider = StateProvider((ref) => 0);

//Un objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier() //Dentro podriamos enviar cualquier info al crear nuestra primera instancia
  ); //Devolveremos una instancia de la clase que controla: ThemeNotifier
  
  //StateNotifierProvider<Nombre de la clase que controla, el estado definido> => <ThemeNotifier, AppTheme>

class ThemeNotifier extends StateNotifier<AppTheme>{ //StateNotifier<AppTheme> -> Mantendremos un estado de AppTheme
  //STATE = Estado = new AppTheme () --> Igual a una nueva instancia de apptheme
  ThemeNotifier() : super(AppTheme()); //Aquí creamos nuestra primera instancia: super(AppTheme())

  //En ThemeNotifier, dentro de un método (usado en theme_changer_screen.dart), ya tendemos acceso a la propiedad 'state': 
  void toogleDarkMode(){
    //-> state.isDarkMode = false; //Esto no se permite, 'isDarkMode' es una propiedad final en AppTheme
    state = state.copyWith(isDarkMode: !state.isDarkMode); //Esto se permite usando el método copyWith de AppTheme
  }

  void changeColorIndex(int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);
  }
}

//El provider: themeNotifierProvider, ya puede ser llamado en nuestro main.dart