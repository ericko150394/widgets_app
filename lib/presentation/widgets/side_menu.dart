import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proyecto12_widget_app/menu/menu_items.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0; //Detectar cual opción del menú fue seleccionada

  @override
  Widget build(BuildContext context) {
    final hasNotch = MediaQuery.of(context).viewPadding.top >
        35; //Nos ayudar a determinar el padding de la pantalla no importa el módelo

    return NavigationDrawer(
      selectedIndex: navDrawerIndex,
      onDestinationSelected: (value) {
        //Ayudara a la navegación, en lugar de la propiedad onTap()
        setState(() {
          navDrawerIndex = value;
        });

        final menuItem = appItems[value];
        context.push(menuItem.link);
        widget.scaffoldKey.currentState?.closeDrawer(); //El parametro del scaffoldkey, lo recibimos desde home_screen, para as+i cerrar el drawer cuando vayamos a otra ventana.
      },
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(28, hasNotch ? 0 : 20, 16, 10),
          child: const Text('Main'),
        ),

        ...appItems
            .sublist(0, 3) //Determinar el no. de elementos de nuestro listado (Del elemento 0 al 2)
            .map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
          child: Divider(),
        ),

        const Padding(
          padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
          child: Text('More Options'),
        ),

        ...appItems
            .sublist(3) //Determinar el no. de elementos de nuestro listado (Del 3 en adelante)
            .map(
              (item) => NavigationDrawerDestination(
                icon: Icon(item.icon),
                label: Text(item.title),
              ),
            ),
      ],
    );
  }
}
