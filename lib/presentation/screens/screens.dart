export 'package:proyecto12_widget_app/presentation/screens/buttons/buttons_screen.dart';
export 'package:proyecto12_widget_app/presentation/screens/cards/cards_screen.dart';
export 'package:proyecto12_widget_app/presentation/screens/home/home_screen.dart';

//NOTA: Para no importar multiples archivos de forma separada en distintas clases, englobamos todas esos
//llamados a archivos cambiando la palabra 'import' por 'export'y poniendo todas en un archivo en comun: screens.dart
//Y ahora, ese nuevo archivo 'indice' o conocido como 'archivo barril/barrrel file' se puede 'importa' a todos las clases
//donde necesitemos accesos a esas exportaciones declaradas.