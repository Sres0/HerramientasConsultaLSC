import 'package:flutter/material.dart';

import 'constants/default_theme.dart';
import 'screens/profile_screen.dart';
import 'screens/tabs_screen.dart';
import 'screens/consultation_tools_screen.dart';
import 'screens/waiting_room_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Herramientas en consulta',
      theme: themeData(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        MyHomePage.routeName: (ctx) => MyHomePage(),
        ConsultationToolsScreen.routeName: (ctx) => ConsultationToolsScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
        WaitingRoomScreen.routeName: (ctx) => WaitingRoomScreen(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  static const routeName = 'home';
  MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home'));
  }
}
