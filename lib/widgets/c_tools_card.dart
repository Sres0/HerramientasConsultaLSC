import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:herramientas/screens/waiting_room_screen.dart';

import '../models/c_tool.dart';
// import '../constants/consultation_tools.dart';
import '../constants/default_theme.dart';
// import '../screens/waiting_room_screen.dart';

class CToolCard extends StatelessWidget {
  final CTool _cTool;

  const CToolCard(this._cTool);

  @override
  Widget build(BuildContext context) {
    void _selectTool(CTool _cTool) {
      // Navigator.pushNamed(context, _cTool.id);
      Navigator.push(
          context, CupertinoPageRoute(builder: (_) => WaitingRoomScreen()));
    }

    return InkWell(
      onTap: () => _selectTool(_cTool),
      splashColor: kPrimaryColorLight,
      borderRadius: kprimaryBorderRadius,
      child: Card(
        elevation: kPrimaryElevation,
        margin: kPrimaryEdgeInsets,
        shape: RoundedRectangleBorder(borderRadius: kprimaryBorderRadius),
        color: kSecondaryColorLight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
              child: ClipRRect(
                borderRadius: kprimaryBorderRadius,
                child: Image(
                  image: AssetImage('images/c_tools_' + _cTool.id + '.jpg'),
                  height: 130,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
              child: Center(
                child: Text(
                  _cTool.title,
                  style: Theme.of(context).textTheme.subtitle1 as TextStyle,
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
