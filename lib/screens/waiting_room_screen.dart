import 'package:flutter/material.dart';

// import '../constants/consultation_tools.dart';
// import '../constants/default_theme.dart';
import '../widgets/gif_n_buttons.dart';
import '../widgets/waiting_room_card.dart';

class WaitingRoomScreen extends StatelessWidget {
  static const routeName = 'sala_espera';

  const WaitingRoomScreen();

  @override
  Widget build(BuildContext context) {
    final _cardHeight = MediaQuery.of(context).size.height * 0.55;

    return Scaffold(
      appBar: AppBar(title: Text('Sala de espera')),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                height: _cardHeight,
                width: double.infinity,
                child: WaitingRoomCard(_cardHeight),
              ),
            ),
            GifNButtons(),
          ],
        ),
      ),
    );
  }
}
