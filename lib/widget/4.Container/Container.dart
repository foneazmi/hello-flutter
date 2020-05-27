import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Widget'),
      ),
      body: Center(
        child: Container(
          // margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(50),
          color: Colors.red,
          child: Container(
            // margin: EdgeInsets.all(10),
            // color: Colors.teal,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: <Color>[
                  Colors.teal,
                  Colors.red,
                  Colors.blue,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
