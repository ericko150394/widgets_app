export 'package:proyecto12_widget_app/presentation/screens/buttons/buttons_screen.dart';
export 'package:proyecto12_widget_app/presentation/screens/cards/cards_screen.dart';
export 'package:proyecto12_widget_app/presentation/screens/home/home_screen.dart';
export 'package:proyecto12_widget_app/presentation/screens/animated/animated_screen.dart';
export 'package:proyecto12_widget_app/presentation/screens/app_tutorial/app_tutorial.dart';
export 'package:proyecto12_widget_app/presentation/screens/counter/counter_screen.dart';
export 'package:proyecto12_widget_app/presentation/screens/infinite_scroll/infinite_scroll.dart';
export 'package:proyecto12_widget_app/presentation/screens/progress/progress_screen.dart';
export 'package:proyecto12_widget_app/presentation/screens/snackbar/snackbar_screen.dart';
export 'package:proyecto12_widget_app/presentation/screens/ui_controls/ui_controls_screen.dart';
export 'package:proyecto12_widget_app/presentation/screens/theme_changer/theme_changer_screen.dart';

//NOTA: Para no importar multiples archivos de forma separada en distintas clases, englobamos todas esos
//llamados a archivos cambiando la palabra 'import' por 'export'y poniendo todas en un archivo en comun: screens.dart
//Y ahora, ese nuevo archivo 'indice' o conocido como 'archivo barril/barrrel file' se puede 'importa' a todos las clases
//donde necesitemos accesos a esas exportaciones declaradas.