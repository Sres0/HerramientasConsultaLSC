import 'package:flutter/material.dart';

import '../constants/default_theme.dart';
import '../models/c_tools_waiting_room_items.dart';
import '../screens/waiting_room_screen.dart';

class WaitingRoomCard extends StatelessWidget {
  final double cardHeight;
  final WaitingRoomItem _voice = WaitingRoomItem.Voice;
  final WaitingRoomItem _turn = WaitingRoomItem.Turn;
  final WaitingRoomItem _call = WaitingRoomItem.Call;
  final WaitingRoomItem _sit = WaitingRoomItem.Sit;

  const WaitingRoomCard(this.cardHeight);

  @override
  Widget build(BuildContext context) {
    final _userContent = SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _voice.displayIcon,
            Text(_voice.displayText),
          ], //Haven't found a better way to do this
        ),
      ),
    );
    final _personelContent = SingleChildScrollView(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: [
                _turn.displayIcon,
                Text(_turn.displayText),
              ],
            ),
            Column(
              children: [
                _call.displayIcon,
                Text(_call.displayText),
              ],
            ),
            Column(
              children: [
                _sit.displayIcon,
                Text(_sit.displayText),
              ],
            ),
          ],
        ),
      ),
    );

    return Card(
      margin: kSecondaryEdgeInsets,
      elevation: kPrimaryElevation,
      shape: RoundedRectangleBorder(borderRadius: kprimaryBorderRadius),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: kprimaryBorderRadius,
                child: Image(
                  height: cardHeight * 1 / 3,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage(
                      'images/c_tools_' + WaitingRoomScreen.routeName + '.jpg'),
                ),
              ),
              Sub1Text(' '),
              WaitingRoomCardContainer(cardHeight, _userContent),
              Sub1Text('Usuario'),
              WaitingRoomCardContainer(cardHeight, _personelContent),
              Sub1Text('Personal de salud'),
            ],
          ),
        ),
      ),
    );
  }
}

class Sub1Text extends StatelessWidget {
  final String _text;

  const Sub1Text(this._text);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return Text(
      _text,
      textAlign: TextAlign.left,
      style: _textTheme.subtitle1 as TextStyle,
    );
  }
}

class WaitingRoomCardContainer extends StatelessWidget {
  final double cardHeight;
  final Widget child;

  const WaitingRoomCardContainer(this.cardHeight, this.child);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight * 1 / 4,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: kPrimaryColorDark),
        borderRadius: kprimaryBorderRadius,
      ),
      child: Center(child: child),
    );
  }
}
