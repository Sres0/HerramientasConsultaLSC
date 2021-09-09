import 'package:flutter/material.dart';
import 'package:herramientas/main.dart';

import '../constants/default_theme.dart';
import './consultation_tools_screen.dart';
import './profile_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen();

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages = [];
  int _selectedIndex = 0;

  @override
  void initState() {
    _pages = [
      {'page': ProfileScreen(), 'title': 'Perfil de usuario'},
      {'page': ConsultationToolsScreen(), 'title': 'Herramientas de consulta'},
      {'page': MyHomePage(), 'title': 'Inicio'},
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pages[_selectedIndex]['title'] as String)),
      body: _pages[_selectedIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: kPrimaryColor,
        selectedItemColor: kPrimaryColorLight,
        unselectedItemColor: kSecondaryColorLight,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _selectPage,
        backgroundColor: kPrimaryColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_paste),
            label: 'H. Consulta',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Inicio',
          ),
        ],
      ),
    );
  }
}
