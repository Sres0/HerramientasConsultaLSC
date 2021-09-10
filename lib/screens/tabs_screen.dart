import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';
import '../constants/default_theme.dart';
import './consultation_tools_screen.dart';
import './profile_screen.dart';

// class TabsScreen extends StatefulWidget {
//   const TabsScreen();

//   @override
//   _TabsScreenState createState() => _TabsScreenState();
// }

// class _TabsScreenState extends State<TabsScreen> {
//   List<Map<String, Object>> _pages = [];
//   int _selectedIndex = 0;

//   @override
//   void initState() {
//     _pages = [
//       {'page': ProfileScreen(), 'title': 'Perfil de usuario'},
//       {'page': ConsultationToolsScreen(), 'title': 'Herramientas de consulta'},
//       {'page': MyHomePage(), 'title': 'Inicio'},
//     ];
//     super.initState();
//   }

//   void _selectPage(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(_pages[_selectedIndex]['title'] as String)),
//       body: _pages[_selectedIndex]['page'] as Widget,
//       bottomNavigationBar: BottomNavigationBar(
//         // backgroundColor: kPrimaryColor,
//         selectedItemColor: kPrimaryColorLight,
//         unselectedItemColor: kSecondaryColorLight,
//         currentIndex: _selectedIndex,
//         type: BottomNavigationBarType.fixed,
//         onTap: _selectPage,
//         backgroundColor: kPrimaryColor,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle_outlined),
//             label: 'Perfil',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.content_paste),
//             label: 'H. Consulta',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home_outlined),
//             label: 'Inicio',
//           ),
//         ],
//       ),
//     );
//   }
// }

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
