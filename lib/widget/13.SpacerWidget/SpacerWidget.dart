import 'package:flutter/material.dart';

class SpacerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: Column(
        children: [
          Image(image: NetworkImage('https://asset.kompas.com/crops/Rk0Fy5EsGu0Y8QYND1-E8sxYAM4=/0x0:900x600/750x500/data/photo/2019/12/29/5e0887489f3e2.jpeg')),
          Spacer(),
          Image(image: AssetImage('images/dahyun.jpg')),
          Spacer(),
          Image(image: NetworkImage('https://i1.wp.com/koreanarea.com/wp-content/uploads/2018/04/DCFdvhDUMAA61pm.jpg')),
        ],
      )
    );
  }
}