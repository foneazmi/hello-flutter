import 'package:flutter/material.dart';

class TextStyleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Widget'),
      ),
      body: Center(
        child: Text(
          'Hello Widget',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 30,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.overline,
            decorationColor: Colors.lightBlueAccent,
            decorationThickness: 5,
            decorationStyle:TextDecorationStyle.wavy,
          ),
        ),
      ),
    );
  }
}
