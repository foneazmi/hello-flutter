import 'package:flutter/material.dart';

class TextFieldWidget extends StatefulWidget {
  @override
  _TextFieldWidgetState createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Widget'),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              maxLength: 5,
              onChanged: (val) {
                setState(() {});
              },
              controller: controller,
            ),
            Text(controller.text),
            TextField(
              maxLines: 2,
              onChanged: (val) {
                setState(() {});
              },
              controller: controller,
            ),
            SizedBox(
              height: 200,
            ),
            TextField(
              decoration: InputDecoration(
                prefix: Container(
                  height: 5,
                  width: 5,
                  color: Colors.blue,
                ),
                icon: Icon(Icons.add_box),
                prefixIcon: Icon(Icons.all_inclusive),
                // prefixText: 'Name : ',
                // prefixStyle: TextStyle(
                //   color: Colors.teal,
                //   fontWeight: FontWeight.bold,
                // ),
                fillColor: Colors.blueGrey,
                filled: true,
                hintText: 'Ini Hint',
                labelText: 'Nama Label',
                hintStyle: TextStyle(
                  color: Colors.red,
                  fontFamily: 'Poppins',
                ),
                labelStyle: TextStyle(
                  color: Colors.red,
                  fontFamily: 'Poppins',
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onChanged: (val) {
                setState(() {});
              },
              controller: controller,
            ),
          ],
        ),
      ),
    );
  }
}
