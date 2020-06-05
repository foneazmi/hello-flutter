import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.adb,
        ),
        title: Text(
          'CustomAppBar Widget',
          style: TextStyle(),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/pattern.png'),
              repeat: ImageRepeat.repeat,
            ),
            gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                Color(0xff0096ff),
                Color(0xff6610f2),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.wifi_tethering),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.airline_seat_legroom_normal),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text('CustomAppBar Widget'),
      ),
    );
  }
}
