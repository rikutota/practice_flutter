import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import 'package:practice_flutter/widgets/app_drawer.dart';

class Gridview extends HookWidget {
  final items = List<String>.generate(100, (i) => "item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(currentScreen: 'gridview'),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("GridView"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
          itemCount: items.length,
          itemBuilder: (context, index){
            return Container(
              color: Colors.blue[100],
              child: Center(child: Text("${items[index]}")),
            );
          }
        )
      )
    );
  }
}
