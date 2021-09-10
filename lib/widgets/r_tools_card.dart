import 'package:flutter/material.dart';
import '../constants/default_theme.dart';
import '/models/c_tool.dart';

class ResponseToolCard extends StatelessWidget {
  final CTool tool;
  final Function onPressed;
  const ResponseToolCard(this.tool, this.onPressed);

  @override
  Widget build(BuildContext context) {
    final _mediaQuerySize = MediaQuery.of(context).size;
    final _cardHeight = _mediaQuerySize.height * 0.12;
    return InkWell(
      onTap: () => onPressed(tool),
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
