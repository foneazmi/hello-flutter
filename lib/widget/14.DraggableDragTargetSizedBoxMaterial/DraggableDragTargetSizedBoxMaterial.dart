import 'dart:developer';

import 'package:flutter/material.dart';

class DraggableDragTargetSizedBoxMaterial extends StatefulWidget {
  @override
  _DraggableDragTargetSizedBoxMaterialState createState() =>
      _DraggableDragTargetSizedBoxMaterialState();
}

class _DraggableDragTargetSizedBoxMaterialState
    extends State<DraggableDragTargetSizedBoxMaterial> {
  Color color1 = Colors.red;
  Color color2 = Colors.amber;

  Color targetColor;

  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Draggable<Color>(
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1.withOpacity(0.7),
                    shape: StadiumBorder(),
                  ),
                ),
                data: color1,
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.black26,
                    shape: StadiumBorder(),
                  ),
                ),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color1,
                    shape: StadiumBorder(),
                  ),
                ),
              ),
              Draggable<Color>(
                feedback: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2.withOpacity(0.7),
                    shape: StadiumBorder(),
                  ),
                ),
                data: color2,
                childWhenDragging: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: Colors.black26,
                    shape: StadiumBorder(),
                  ),
                ),
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Material(
                    color: color2,
                    shape: StadiumBorder(),
                  ),
                ),
              )
            ],
          ),
          DragTarget<Color>(
            onWillAccept: (val) => true,
            onAccept: (val) {
              log(val.toString());
              isAccepted = true;
              targetColor = val;
            },
            builder: (context,candidates,rejected){
              return (isAccepted) ? SizedBox(
                  width: 150,
                  height: 150,
                  child: Material(
                    color: targetColor,
                    shape: StadiumBorder(),
                  ),
                ):SizedBox(
                  width: 150,
                  height: 150,
                  child: Material(
                    color: Colors.black26,
                    shape: StadiumBorder(),
                  ),
                );
            },
          )
        ],
      ),
    );
  }
}
