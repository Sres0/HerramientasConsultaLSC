import 'package:flutter/material.dart';

import '../widgets/gif_n_buttons.dart';

class WaitingRoomScreen extends StatefulWidget {
  static const routeName = 'sala_espera';

  const WaitingRoomScreen();

  @override
  _WaitingRoomScreenState createState() => _WaitingRoomScreenState();
}

class _WaitingRoomScreenState extends State<WaitingRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sala de espera')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          GifNButtons(),
        ],
      ),
    );
  }
}
