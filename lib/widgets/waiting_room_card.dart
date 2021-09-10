import 'package:flutter/material.dart';

import '../constants/default_theme.dart';
import '../screens/waiting_room_screen.dart';

class WaitingRoomCard extends StatelessWidget {
  final double cardHeight;

  const WaitingRoomCard(this.cardHeight);

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;
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
              Text(
                ' ',
                textAlign: TextAlign.left,
                style: _textTheme.subtitle1 as TextStyle,
              ),
              WaitingRoomCardContainer(cardHeight, Text('Voz')),
              Text(
                'Usuario',
                textAlign: TextAlign.left,
                style: _textTheme.subtitle1 as TextStyle,
              ),
              WaitingRoomCardContainer(
                  cardHeight, Text('Turno, llamada, silla')),
              Text(
                'Personal de salud',
                textAlign: TextAlign.left,
                style: _textTheme.subtitle1 as TextStyle,
              ),
            ],
          ),
        ),
      ),
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
