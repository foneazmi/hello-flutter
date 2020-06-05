import 'package:flutter/material.dart';

class StatelessNStatefull extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless & Statefull'),
      ),
      body: StateFullKhan(),
    );
  }
}

class StateFullKhan extends StatefulWidget {
  @override
  _StateFullKhanState createState() => _StateFullKhanState();
}

class _StateFullKhanState extends State<StateFullKhan> {
  int number = 0;

  void increment() {
    setState(() {
      number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: number.toDouble()),
            ),
            RaisedButton(
              onPressed: increment,
              child: Text('tambah'),
            )
          ],
        ),
      ),
    );
  }
}
