import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Icon(Icons.assignment_turned_in),
                          ),
                          Text('data')
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Icon(Icons.airplay),
                          ),
                          Text('data')
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Icon(Icons.airplay),
                          ),
                          Text('data')
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(5),
                            child: Icon(Icons.airplay),
                          ),
                          Text('data')
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
