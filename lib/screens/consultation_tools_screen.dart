import 'package:flutter/material.dart';

import '../constants/consultation_tools.dart';
import '../constants/default_theme.dart';
import '../widgets/c_tools_card.dart';

class ConsultationToolsScreen extends StatelessWidget {
  static const routeName = '/consultation_tools';

  @override
  Widget build(BuildContext context) {
    var _gridDelegate = SliverGridDelegateWithMaxCrossAxisExtent(
      mainAxisExtent: 200,
      maxCrossAxisExtent: 300,
    );

    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.55,
                child: GridView(
                  // padding: kPrimaryEdgeInsetsSymmetric,
                  children: CTOOLS.map((cat) => CToolCard(cat)).toList(),
                  gridDelegate: _gridDelegate,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
