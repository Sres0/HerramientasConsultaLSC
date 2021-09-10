import 'package:flutter/material.dart';
import 'package:herramientas/constants/consultation_tools.dart';
import 'package:herramientas/constants/default_theme.dart';
import 'package:herramientas/models/c_tool.dart';
import 'package:herramientas/widgets/gif_n_buttons.dart';

class ResponseToolsScreen extends StatelessWidget {
  static const routeName = 'herramientas_respuesta';
  const ResponseToolsScreen();

  @override
  Widget build(BuildContext context) {
    final _mediaQuerySize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Herramientas de respuesta'),
        automaticallyImplyLeading: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: _mediaQuerySize.height * 0.55,
                child: ListView(
                  padding: kPrimaryEdgeInsets,
                  children: RESPONSETOOLS
                      .map((tool) => ResponseToolCard(tool))
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

class ResponseToolCard extends StatelessWidget {
  final CTool tool;
  const ResponseToolCard(this.tool);

  @override
  Widget build(BuildContext context) {
    final _mediaQuerySize = MediaQuery.of(context).size;
    final _cardHeight = _mediaQuerySize.height * 0.12;
    return InkWell(
      onTap: () => print('hi'),
      splashColor: kPrimaryColorLight,
      borderRadius: kprimaryBorderRadius,
      child: Card(
        elevation: kPrimaryElevation,
        margin: kPrimaryEdgeInsetsSymmetric,
        shape: RoundedRectangleBorder(borderRadius: kprimaryBorderRadius),
        color: kSecondaryColorLight,
        child: Container(
          height: _cardHeight,
          padding: kPrimaryEdgeInsets,
          child: Center(
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: kprimaryBorderRadius,
                    child: Image(
                      image: AssetImage('images/r_tools_' + tool.id + '.jpg'),
                      height: _cardHeight * 0.75,
                      width: _cardHeight * 0.75,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: _mediaQuerySize.width * 0.1),
                  Expanded(
                    child: Container(
                      child: Text(
                        tool.title,
                        style: Theme.of(context).textTheme.subtitle1,
                        softWrap: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
