import 'package:flutter/material.dart';

class SFTemplate extends StatefulWidget {
  @override
  _SFTemplateState createState() => _SFTemplateState();
}

class _SFTemplateState extends State<SFTemplate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget'),
      ),
      body: Center(
        child: Text('Widget'),
      ),
    );
  }
}