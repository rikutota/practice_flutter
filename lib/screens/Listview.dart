import 'package:flutter/material.dart';
import 'package:practice_flutter/screens/home_page.dart';

class Listview extends StatelessWidget {
  final items = List<String>.generate(100, (i) => "item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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