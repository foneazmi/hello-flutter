import 'package:flutter/material.dart';

class HelloWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Widget'),
      ),
      body: Center(
        child: Text('Hello Widget'),
      ),
    );
  }
}
