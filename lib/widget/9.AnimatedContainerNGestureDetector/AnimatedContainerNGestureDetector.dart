import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerNGestureDetector extends StatefulWidget {
  @override
  _AnimatedContainerNGestureDetectorState createState() =>
      _AnimatedContainerNGestureDetectorState();
}

class _AnimatedContainerNGestureDetectorState
    extends State<AnimatedContainerNGestureDetector> {
  Random rand = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer & GestureDetector'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            setState(() {
              
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: 50.0 + rand.nextInt(500),
            height: 50.0 + rand.nextInt(500),
            color: Color.fromARGB(
              255,
              rand.nextInt(256),
              rand.nextInt(256),
              rand.nextInt(256),
            ),
          ),
        ),
      ),
    );
  }
}
