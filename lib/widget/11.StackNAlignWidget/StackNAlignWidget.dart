import 'package:flutter/material.dart';

class StackNAlignWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack N Align Widget'),
      ),
      body: Center(
          child: Stack(
        children: [
          Container(
            color: Colors.limeAccent,
          ),
          Column(
            children: [
              Text('asdasd'),
              Text('asdasd'),
            ],
          ),
          Align(
            alignment: Alignment(0.9, 0.9),
            child: RaisedButton(
              onPressed: () {},
              child: Text('data'),
              color: Colors.orange,
            ),
          )
        ],
      )),
    );
  }
}
