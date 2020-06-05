import 'package:flutter/material.dart';

class DraggableDragTargetSizedBoxMaterial extends StatefulWidget {
  @override
  _DraggableDragTargetSizedBoxMaterialState createState() => _DraggableDragTargetSizedBoxMaterialState();
}

class _DraggableDragTargetSizedBoxMaterialState extends State<DraggableDragTargetSizedBoxMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable Drag Target Sized Box Material'),
      ),
      body: Center(
        child: Text('DraggableDragTargetSizedBoxMaterial'),
      ),
    );
  }
}