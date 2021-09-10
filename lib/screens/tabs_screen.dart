import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../constants/default_theme.dart';
import './consultation_tools_screen.dart';
import './profile_screen.dart';

class CupertinoTabsScreen extends StatelessWidget {
  const CupertinoTabsScreen();

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        backgroundColor: kPrimaryColor,
        activeColor: kPrimaryColorLight,
        inactiveColor: kSecondaryColorLight,
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
      tabBuilder: (ctx, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(builder: (ctx) {
              return CupertinoPageScaffold(
                child: ProfileScreen(),
              );
            });
          case 1:
            return CupertinoTabView(
              builder: (ctx) {
                return CupertinoPageScaffold(
                  child: ConsultationToolsScreen(),
                );
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (ctx) {
                return CupertinoPageScaffold(
                  child: MyHomePage(),
                );
              },
            );
          default:
            return CupertinoTabView(
              builder: (ctx) {
                return CupertinoPageScaffold(
                  child: Text('Error 404: Page not found'),
                );
              },
            );
        }
      },
    );
  }
}
