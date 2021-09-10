import 'package:flutter/material.dart';

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

  IconButton get displayIcon {
    switch (this) {
      case WaitingRoomItem.Voice:
        return IconButton(
          iconSize: 30,
          icon: Icon(Icons.volume_up_rounded),
          onPressed: () => print('voice'),
        );
      case WaitingRoomItem.Turn:
        return IconButton(
          iconSize: 30,
          icon: Icon(Icons.confirmation_num),
          onPressed: () => print('Turn'),
        );
      case WaitingRoomItem.Call:
        return IconButton(
          iconSize: 30,
          icon: Icon(Icons.headset_mic_rounded),
          onPressed: () => print('Call'),
        );
      case WaitingRoomItem.Sit:
        return IconButton(
          iconSize: 30,
          icon: Icon(Icons.chair),
          onPressed: () => print('Sit'),
        );
    }
  }
}
