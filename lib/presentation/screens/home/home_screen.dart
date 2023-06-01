import 'package:flutter/material.dart';
import 'package:proyecto12_widget_app/menu/menu_items.dart';
import 'package:proyecto12_widget_app/presentation/screens/buttons/buttons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter + Material 3"),
        centerTitle: false,
        actions: const [],
      ),
      body: const _HomeView(),
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
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (ctx) => const ButtonsScreen() ));
      },
    );
  }
}
