import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CollapsableToolBarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("Silver App Bar"),
          backgroundColor: Colors.blue,
          expandedHeight: 180,
          floating: true,
        ),
        /*  SliverFixedExtentList(),
        SliverGrid(),
        SliverGrid.count(crossAxisCount: 2),
        SliverGrid.extent(maxCrossAxisExtent: 50),*/
      ],
    );
  }
}
