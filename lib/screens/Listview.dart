import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:practice_flutter/widgets/app_drawer.dart';


class Listview extends HookWidget {
  final items = List<String>.generate(100, (i) => "item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(currentScreen: 'listview'),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("ListView"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){
            return ListTile(
              title: Text("${items[index]}"),
            );
          }
        )
      )
    );
  }
}