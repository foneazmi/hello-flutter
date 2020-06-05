import 'package:flutter/material.dart';

class AnonymousMethod extends StatefulWidget {
  @override
  _AnonymousMethodState createState() => _AnonymousMethodState();
}

class _AnonymousMethodState extends State<AnonymousMethod> {
  String tittle = 'Anonymous Method';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tittle),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => {
            setState(() {
              tittle = 'Anonymous Method Pressed';
            })
          },
          child: Text('Press'),
        ),
      ),
    );
  }
}
