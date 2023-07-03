import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:proyecto12_widget_app/menu/menu_items.dart';
import 'package:proyecto12_widget_app/presentation/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  //Propiedad estatica para usar en el Go Router (app_router.dart):
  static const String name = 'home_screen'; //Recuerda se declara 'static' para no crear instancias de la clase HomeScreen 
  
  const HomeScreen({super.key});
  

  @override
  Widget build(BuildContext context) {

    final scaffoldKey =  GlobalKey<ScaffoldState>(); //Referencia el scaffold que abre nuestro drawer(menu lateral)

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("Flutter + Material 3"),
        centerTitle: false,
        actions: const [],
      ),
      body: const _HomeView(),
      drawer: SideMenu(scaffoldKey: scaffoldKey,),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appItems.length,
      itemBuilder: (context, index) {
        final item = appItems[index];

        return _CustomListTile(item: item);
      },
    );
  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({required this.item});

  final MenuItem item;

  @override
  Widget build(BuildContext context) {


    final theme = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(item.icon, color: theme.primary,),
      title: Text(item.title),
      subtitle: Text(item.subTitle),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: theme.primary,),
      onTap: (){
        //Opcion 1 (Usando Flutter):
        /* Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => const ButtonsScreen() )); */

        //Opcion 2:
        //Navigator.pushNamed(context, item.link);

        //Opcion 3 (Usando Go Router):
        context.push(item.link);

        //Opcion 4:
        //context.pushNamed(CardsScreen.name);
      },
    );
  }
}
