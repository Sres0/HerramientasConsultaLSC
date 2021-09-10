import 'package:flutter/material.dart';

import '../constants/default_theme.dart';
import '../screens/waiting_room_screen.dart';

class WaitingRoomCard extends StatefulWidget {
  final double cardHeight;

  const WaitingRoomCard(this.cardHeight);

  @override
  _WaitingRoomCardState createState() => _WaitingRoomCardState();
}

class _WaitingRoomCardState extends State<WaitingRoomCard> {
  bool _isVoiceSelected = false;
  bool _isTurnSelected = false;
  bool _isCallSelected = false;
  bool _isSitSelected = false;

  void selectIcon(String iconName) {
    if (iconName == 'voice') {
      print('voice');
      setState(() {
        _isVoiceSelected = !_isVoiceSelected;
        _isTurnSelected = false;
        _isCallSelected = false;
        _isSitSelected = false;
      });
    } else if (iconName == 'turn') {
      print('turn');
      setState(() {
        _isVoiceSelected = false;
        _isTurnSelected = true;
        _isCallSelected = false;
        _isSitSelected = false;
      });
    } else if (iconName == 'call') {
      print('call');
      setState(() {
        _isVoiceSelected = false;
        _isTurnSelected = false;
        _isCallSelected = true;
        _isSitSelected = false;
      });
    } else if (iconName == 'sit') {
      print('sit');
      setState(() {
        _isVoiceSelected = false;
        _isTurnSelected = false;
        _isCallSelected = false;
        _isSitSelected = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _userContent = SingleChildScrollView(
      child: Container(
        padding: kPrimaryEdgeInsets,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            WRItemIconButton(
              selectedStatus: _isVoiceSelected,
              onPressed: () => selectIcon('voice'),
              icon: Icons.volume_up_rounded,
            ),
            Sub1Text('Mensaje de voz'),
          ],
        ),
      ),
    );

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
                  WRItemIconButton(
                      selectedStatus: _isTurnSelected,
                      onPressed: () => selectIcon('turn'),
                      icon: Icons.confirmation_number_rounded),
                  Sub1Text('Espera tu turno'),
                ],
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                children: [
                  WRItemIconButton(
                      selectedStatus: _isCallSelected,
                      onPressed: () => selectIcon('call'),
                      icon: Icons.headset_mic_rounded),
                  Sub1Text('Yo te llamo\n'), //I mean
                ],
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  WRItemIconButton(
                      selectedStatus: _isSitSelected,
                      onPressed: () => selectIcon('sit'),
                      icon: Icons.chair),
                  Sub1Text('Espera sentado'),
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

class WRItemIconButton extends StatelessWidget {
  final bool selectedStatus;
  final VoidCallback onPressed;
  final IconData icon;

  const WRItemIconButton({
    required this.selectedStatus,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: selectedStatus ? kPrimaryColorLight : kPrimaryColorDark,
      splashColor: kPrimaryColorLight,
      iconSize: selectedStatus ? 50 : 40, //no se sale
      icon: Icon(icon),
      onPressed: onPressed,
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
