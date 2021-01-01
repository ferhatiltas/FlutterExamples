import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ornek_image_text/ui/custom_scroll_silvers.dart';
import 'package:ornek_image_text/ui/etkin_liste_ornek.dart';
import 'package:ornek_image_text/ui/grid_view_kullanimi.dart';


void main() => runApp(MaterialApp(
      title: "Flutter Examples",
     // color: Colors.blue,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Examples"),
        ),
        body: CollapsableToolBarOrnek(),
      ),
    ));
