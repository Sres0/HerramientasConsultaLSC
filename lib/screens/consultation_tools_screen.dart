import 'package:flutter/material.dart';

class ConsultationToolsScreen extends StatefulWidget {
  static const routeName = '/consultation_tools';
  const ConsultationToolsScreen();

  @override
  _ConsultationToolsScreenState createState() =>
      _ConsultationToolsScreenState();
}

class _ConsultationToolsScreenState extends State<ConsultationToolsScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Herramientas de consulta'));
  }
}
