// lib/widgets/app_drawer.dart
import 'package:flutter/material.dart';
import 'package:practice_flutter/screens/home_page.dart';
import 'package:practice_flutter/screens/Listview.dart';
import 'package:practice_flutter/screens/gridview.dart';
import 'package:practice_flutter/screens/map.dart';

class AppDrawer extends StatelessWidget {
  // 現在どの画面にいるかを識別するための文字列を受け取ります
  final String currentScreen;

  const AppDrawer({super.key, required this.currentScreen});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          
          // currentScreen が 'home' ではないときだけ表示します
          if (currentScreen != 'home')
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                // pushReplacement を使うことで、遷移元の画面の履歴を置き換え、
                // 戻るボタンのスタックが無限に溜まるのを防ぎます
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePage(title: 'RIKUTO TAKAGI flutter practice'),
                  ),
                );
              },
            ),

          // currentScreen が 'listview' ではないときだけ表示します
          if (currentScreen != 'listview')
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('ListView'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Listview()),
                );
              },
            ),

          // currentScreen が 'gridview' ではないときだけ表示します
          if (currentScreen != 'gridview')
            ListTile(
              leading: const Icon(Icons.grid_on),
              title: const Text('GridView'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Gridview()),
                );
              },
            ),

          // currentScreen が 'map' ではないときだけ表示します
          if (currentScreen != 'map')
            ListTile(
              leading: const Icon(Icons.map),
              title: const Text('Map'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => Map()),
                );
              },
            ),
        ],
      ),
    );
  }
}