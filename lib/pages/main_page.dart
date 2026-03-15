import 'package:flutter/material.dart';

import 'home_page.dart';
import 'search_page.dart';
import 'library_page.dart';
import 'group_info_page.dart';

import '../widgets/mini_player.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  final pages = const [
    HomePage(),
    SearchPage(),
    LibraryPage(),
    GroupInfoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// PAGE
          pages[index],

          /// MINI PLAYER (HIỆN Ở MỌI TRANG)
          const Positioned(
            left: 0,
            right: 0,
            bottom: 70,
            child: SafeArea(child: MiniPlayer()),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,

        onTap: (i) {
          setState(() {
            index = i;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),

          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),

          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Library",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.group), label: "Group"),
        ],
      ),
    );
  }
}
