import 'package:best_moment_client/screens/reserve_screen.dart';
import 'package:best_moment_client/screens/search_screen.dart';
import 'package:best_moment_client/screens/setting_screen.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';
import 'favorit_screen.dart';

class BottomBarScreen extends StatefulWidget {
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  List<Map<String, Widget>> _pages = [];
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': SearchScreen()},
      {
        'page': ReserveScreen(),
      },
      {
        'page': FavoritScreen(),
      },
      {
        'page': ChatScreen(),
      },
      {
        'page': SettingScreen(),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        // color: Colors.white,

        child: Container(
          height: 70,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: BottomNavigationBar(
              showUnselectedLabels: true,
              elevation: 20,
              iconSize: 24,
              onTap: _selectPage,
              backgroundColor: Colors.white,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Color(0xff30C6E0),
              currentIndex: _selectedPageIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text('البحث'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.date_range),
                  title: Text('المحجوزات'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  title: Text('المفضلة'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_bubble_rounded),
                  title: Text('المحادثات'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  title: Text('الاعدادات'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
