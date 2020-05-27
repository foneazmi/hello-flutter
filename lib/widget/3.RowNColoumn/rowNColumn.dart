import 'package:flutter/material.dart';

class RowNColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Row and Column'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('data'),
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            )
          ],
        ));
  }
}
