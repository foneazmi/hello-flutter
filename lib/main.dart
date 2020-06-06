import 'package:flutter/material.dart';
import 'package:hellokhan/widget/1.HelloWidget/helloWidget.dart';
import 'package:hellokhan/widget/10.FlexibleWidget/FlexibleWidget.dart';
import 'package:hellokhan/widget/11.StackNAlignWidget/StackNAlignWidget.dart';
import 'package:hellokhan/widget/12.ImageWidget/ImageWidget.dart';
import 'package:hellokhan/widget/13.SpacerWidget/SpacerWidget.dart';
import 'package:hellokhan/widget/14.DraggableDragTargetSizedBoxMaterial/DraggableDragTargetSizedBoxMaterial.dart';
import 'package:hellokhan/widget/15.CustomAppBar/CustomAppBar.dart';
import 'package:hellokhan/widget/16.CardWidget/CardWidget.dart';
import 'package:hellokhan/widget/17.TextField/TextFieldWidget.dart';
import 'package:hellokhan/widget/18.MediaQuery/SLTemplate.dart';
import 'package:hellokhan/widget/19.InkWell/InkWellWidget.dart';
import 'package:hellokhan/widget/2.TextWidget/textWidget.dart';
import 'package:hellokhan/widget/20.Opacity/Opacity.dart';
import 'package:hellokhan/widget/3.RowNColoumn/rowNColumn.dart';
import 'package:hellokhan/widget/4.Container/Container.dart';
import 'package:hellokhan/widget/5.StatelessnStatefull/StatelessnStateless.dart';
import 'package:hellokhan/widget/6.AnonymousMethod/AnonymousMethod.dart';
import 'package:hellokhan/widget/7.TextStyle/TextStyleWIdget.dart';
import 'package:hellokhan/widget/8.ListNListVIew/ListNListView.dart';
import 'package:hellokhan/widget/9.AnimatedContainerNGestureDetector/AnimatedContainerNGestureDetector.dart';

void main() {
  runApp(MaterialApp(
    home: HelloKhan(),
    title: "HelloKhan",
    showSemanticsDebugger: false,
    routes: <String, WidgetBuilder>{
      '/hellowidget': (BuildContext context) => HelloWidget(),
      '/textwidget': (BuildContext context) => TextWidget(),
      '/rowncolumn': (BuildContext context) => RowNColumn(),
      '/container': (BuildContext context) => ContainerWidget(),
      '/statelesstatlefull': (BuildContext context) => StatelessNStatefull(),
      '/AnonymousMethod': (BuildContext context) => AnonymousMethod(),
      '/TextStyle': (BuildContext context) => TextStyleWidget(),
      '/ListNListView': (BuildContext context) => ListNListView(),
      '/AnimatedContainerNGestureDetector': (BuildContext context) =>
          AnimatedContainerNGestureDetector(),
      '/FlexibleWidget': (BuildContext context) => FlexibleWidget(),
      '/StackNAlignWidget': (BuildContext context) => StackNAlignWidget(),
      '/ImageWidget': (BuildContext context) => ImageWidget(),
      '/SpacerWidget': (BuildContext context) => SpacerWidget(),
      '/DraggableDragTargetSizedBoxMaterial': (BuildContext context) =>
          DraggableDragTargetSizedBoxMaterial(),
      '/CustomAppBar': (BuildContext context) => CustomAppBar(),
      '/CardWidget': (BuildContext context) => CardWidget(),
      '/TextFieldWidget': (BuildContext context) => TextFieldWidget(),
      '/MediaQuery': (BuildContext context) => MediaQueryWidget(),
      '/InkWellWidget': (BuildContext context) => InkWellWidget(),
      '/OpacityWidget': (BuildContext context) => OpacityWidget(),
    },
  ));
}

class HelloKhan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HelloWidget"),
      ),
      body: ListView(
        children: <Widget>[
          listItem(context, 'Hello Widget', '/hellowidget'),
          listItem(context, 'Text Widget', '/textwidget'),
          listItem(context, 'Row & Column', '/rowncolumn'),
          listItem(context, 'Container', '/container'),
          listItem(context, 'Stateless & Statefull', '/statelesstatlefull'),
          listItem(context, 'Anonymous Method', '/AnonymousMethod'),
          listItem(context, 'Text Style', '/TextStyle'),
          listItem(context, 'List & ListView', '/ListNListView'),
          listItem(context, 'Animated Container & GestureDetector',
              '/AnimatedContainerNGestureDetector'),
          listItem(context, 'Flexible Widget', '/FlexibleWidget'),
          listItem(context, 'Stack & Align Widget', '/StackNAlignWidget'),
          listItem(context, 'Image Widget', '/ImageWidget'),
          listItem(context, 'Spacer Widget', '/SpacerWidget'),
          listItem(context, 'Draggable Widget',
              '/DraggableDragTargetSizedBoxMaterial'),
          listItem(context, 'Custom App Bar', '/CustomAppBar'),
          listItem(context, 'Card Widget', '/CardWidget'),
          listItem(context, 'TextField Widget', '/TextFieldWidget'),
          listItem(context, 'MediaQuery Widget', '/MediaQuery'),
          listItem(context, 'InkWell Widget', '/InkWellWidget'),
          listItem(context, 'Opacity Widget', '/OpacityWidget'),
          
        ],
      ),
    );
  }

  Widget listItem(BuildContext context, String tittle, String route) {
    return Column(
      children: [
        SizedBox(
          height: 8,
        ),
        RaisedButton(
          shape: StadiumBorder(),
          color: Colors.amber,
          child: Text(
            tittle,
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            Navigator.pushNamed(context, route);
          },
        ),
      ],
    );
  }
}
