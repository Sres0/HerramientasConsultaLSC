import 'package:flutter/material.dart';

import 'constants/theme_data.dart';
import 'screens/tabs_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/consultation_tools_screen.dart';

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
        ConsultationToolsScreen.routeName: (ctx) => ConsultationToolsScreen(),
        ProfileScreen.routeName: (ctx) => ProfileScreen()
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage();

  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home'));
  }
}
