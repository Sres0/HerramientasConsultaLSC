import 'package:flutter/material.dart';

import '../constants/default_theme.dart';
import '../models/c_tools_waiting_room_items.dart';
import '../screens/waiting_room_screen.dart';

class WaitingRoomCard extends StatefulWidget {
  final double cardHeight;

  const WaitingRoomCard(this.cardHeight);

  @override
  _WaitingRoomCardState createState() => _WaitingRoomCardState();
}

class _WaitingRoomCardState extends State<WaitingRoomCard> {
  final WaitingRoomItem _voice = WaitingRoomItem.Voice;
  final WaitingRoomItem _turn = WaitingRoomItem.Turn;
  final WaitingRoomItem _call = WaitingRoomItem.Call;
  final WaitingRoomItem _sit = WaitingRoomItem.Sit;

  @override
  Widget build(BuildContext context) {
    final _userContent = SingleChildScrollView(
      child: Container(
        padding: kPrimaryEdgeInsets,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _voice.unselectedIcon,
            Sub1Text(_voice.displayText),
          ],
        ),
      ),
    );
    // final _healthPersonnelContent = SingleChildScrollView(
    //   child: Container(
    //     padding: kPrimaryEdgeInsets,
    //     child: Expanded(
    //       child: Column(
    //         children: [
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: [
    //               _turn.unselectedIcon,
    //               _call.unselectedIcon,
    //               _sit.unselectedIcon,
    //             ],
    //           ),
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //             children: [
    //               Sub1Text(_turn.displayText),
    //               Sub1Text(_call.displayText),
    //               Sub1Text(_sit.displayText),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
    final _personnelContent = SingleChildScrollView(
      //oh well
      child: Container(
        padding: kPrimaryEdgeInsets,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              child: Column(
                children: [
                  _turn.unselectedIcon,
                  Sub1Text(_turn.displayText),
                ],
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                children: [
                  _call.unselectedIcon,
                  Sub1Text(_call.displayText + '\n'), //I mean
                ],
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _sit.unselectedIcon,
                  Sub1Text(_sit.displayText),
                ],
              ),
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
                  height: widget.cardHeight * 1 / 3,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage(
                      'images/c_tools_' + WaitingRoomScreen.routeName + '.jpg'),
                ),
              ),
              Sub1Text(' '),
              WaitingRoomCardContainer(widget.cardHeight, _userContent),
              Sub1Text('Usuario'),
              WaitingRoomCardContainer(widget.cardHeight, _personnelContent),
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
  final TextAlign textAlign;

  const Sub1Text(this._text, {this.textAlign = TextAlign.center});

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).textTheme;

    return Text(
      _text,
      textAlign: textAlign,
      style: _textTheme.subtitle1 as TextStyle,
      softWrap: true,
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
