import 'package:flutter/material.dart';

class InkWellWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              onPressed: () {},
              child: Text('Raised Button'),
              color: Colors.amber,
              shape: StadiumBorder(),
            ),
            Container(
              height: 40,
              width: 140,
              child: Material(
                borderRadius: BorderRadius.circular(20),
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(20),
                  splashColor: Colors.pink,
                  onTap: () {},
                  child: Center(
                    child: Text(
                      'InkWell Button',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.purple, Colors.pink],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
