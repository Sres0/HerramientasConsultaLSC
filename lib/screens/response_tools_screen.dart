import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:herramientas/models/c_tool.dart';
import 'package:herramientas/constants/consultation_tools.dart';
import 'package:herramientas/constants/default_theme.dart';
import 'package:herramientas/widgets/r_tools_card.dart';
import 'package:herramientas/widgets/gif_n_buttons.dart';
import 'package:herramientas/main.dart';

class ResponseToolsScreen extends StatelessWidget {
  static const routeName = 'herramientas_respuesta';
  const ResponseToolsScreen();

  @override
  Widget build(BuildContext context) {
    final _mediaQuerySize = MediaQuery.of(context).size;
    void _selectTool(CTool _rTool) {
      late Widget _page;
      switch (_rTool.id) {
        case 'respuesta_numerica':
          _page = MyHomePage();
          break;
        case 'escala_dolor':
          _page = MyHomePage();
          break;
        case 'respuesta_deletreo':
          _page = MyHomePage();
          break;
      }
      Navigator.push(context, CupertinoPageRoute(builder: (_) => _page));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Herramientas de respuesta'),
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                height: _mediaQuerySize.height * 0.55,
                child: ListView(
                  padding: kPrimaryEdgeInsets,
                  children: RESPONSETOOLS
                      .map((tool) => ResponseToolCard(tool, _selectTool))
                      .toList(),
                ),
              ),
            ),
            GifNButtons(),
          ],
        ),
      ),
    );
  }
}
