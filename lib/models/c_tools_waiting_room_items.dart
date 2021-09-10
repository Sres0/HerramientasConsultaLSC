import 'package:flutter/material.dart';

import '../constants/default_theme.dart';

enum WaitingRoomItem {
  Voice,
  Turn,
  Call,
  Sit,
}

extension ItemExtension on WaitingRoomItem {
  String get displayText {
    switch (this) {
      case WaitingRoomItem.Voice:
        return 'Mensaje de voz';
      case WaitingRoomItem.Turn:
        return 'Espera tu turno';
      case WaitingRoomItem.Call:
        return 'Yo te llamo';
      case WaitingRoomItem.Sit:
        return 'Espera sentado';
    }
  }

  IconButton get unselectedIcon {
    switch (this) {
      case WaitingRoomItem.Voice:
        return IconButton(
          color: kPrimaryColorLight,
          splashColor: kPrimaryColorLight,
          iconSize: 40,
          icon: Icon(Icons.volume_up_rounded),
          onPressed: () => print('voice'),
        );
      case WaitingRoomItem.Turn:
        return IconButton(
          color: kPrimaryColorDark,
          splashColor: kPrimaryColorLight,
          iconSize: 40,
          icon: Icon(Icons.confirmation_num),
          onPressed: () => print('Turn'),
        );
      case WaitingRoomItem.Call:
        return IconButton(
          color: kPrimaryColorDark,
          splashColor: kPrimaryColorLight,
          iconSize: 40,
          icon: Icon(Icons.headset_mic_rounded),
          onPressed: () => print('Call'),
        );
      case WaitingRoomItem.Sit:
        return IconButton(
          color: kPrimaryColorDark,
          splashColor: kPrimaryColorLight,
          iconSize: 40,
          icon: Icon(Icons.chair),
          onPressed: () => print('Sit'),
        );
    }
  }
}

class WRItemIconButton extends StatelessWidget {
  final Color _color;
  final VoidCallback _onPressed;
  const WRItemIconButton(this._color, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      color: _color,
      splashColor: kPrimaryColorLight,
      iconSize: 40,
      icon: Icon(Icons.volume_up_rounded),
      onPressed: () => _onPressed,
    );
  }
}
