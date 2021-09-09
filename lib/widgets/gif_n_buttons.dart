import 'package:flutter/material.dart';

import '../constants/default_theme.dart';

class GifNButtons extends StatelessWidget {
  final bool twoButtons;
  const GifNButtons({this.twoButtons = true});

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Container(
      height: _mediaQuery.size.height * 0.25,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(
              width: _mediaQuery.size.width *
                  0.1), //Quitarle appbar y bottom navigation
          Card(
            elevation: kPrimaryElevation,
            child: Image(
              image: AssetImage('images/placeholder.gif'),
              height: _mediaQuery.size.height * 0.18,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: _mediaQuery.size.width * 0.1),
          Column(
            mainAxisAlignment: twoButtons
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.center,
            children: [
              ButtonGifNButton(Icons.check),
              twoButtons ? ButtonGifNButton(Icons.arrow_back) : Container(),
            ],
          ),
          SizedBox(width: _mediaQuery.size.width * 0.1),
        ],
      ),
    );
  }
}

class ButtonGifNButton extends StatelessWidget {
  final IconData icon;

  const ButtonGifNButton(this.icon);

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);

    return SizedBox(
      height: _mediaQuery.size.height * 0.06, //EHM
      width: _mediaQuery.size.width * 0.3,
      child: ElevatedButton(
        child: Icon(
          icon,
          color: kSecondaryColorLight,
        ),
        onPressed: () => print('button'),
      ),
    );
  }
}
