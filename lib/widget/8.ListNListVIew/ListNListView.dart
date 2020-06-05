import 'package:flutter/material.dart';

class ListNListView extends StatefulWidget {
  @override
  _ListNListViewState createState() => _ListNListViewState();
}

class _ListNListViewState extends State<ListNListView> {
  List<Widget> widgets = [];

  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List & ListView'),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () => {
                  setState(() {
                    widgets.add(
                      Text(
                        'New Data ' + counter.toString(),
                        style: TextStyle(
                            fontSize: 10 + counter.toDouble() * 3,
                            fontFamily: 'Poppins'),
                      ),
                    );
                    counter++;
                  })
                },
                child: Text('Add'),
              ),
              RaisedButton(
                onPressed: () => {
                  setState(() {
                    widgets.removeLast();
                    counter--;
                  })
                },
                child: Text('Delete'),
              )
            ],
          ),
          Column(
            children: widgets,
          )
        ],
      ),
    );
  }
}
