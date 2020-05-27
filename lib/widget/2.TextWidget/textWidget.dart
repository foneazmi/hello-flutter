import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Widget'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 150,
          child: Text(
            'Hello Widget Hello Widget Hello Widget Hello Widget Hello Widget Hello Widget ',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            // maxLines: 2,
            // overflow: TextOverflow.ellipsis,
            // softWrap: false,
          ),
        ),
      ),
    );
  }
}
