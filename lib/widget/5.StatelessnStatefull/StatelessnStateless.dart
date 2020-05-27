import 'package:flutter/material.dart';

class StatelessNStatefull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless & Statefull'),
      ),
      body: Center(
        child: Text('statelessstatefull'),
      ),
    );
  }
}