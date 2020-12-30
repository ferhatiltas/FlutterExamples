import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ornek_image_text/ui/etkin_liste_ornek.dart';


void main() => runApp(MaterialApp(
      title: "Flutter Examples",
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("List Examples"),
        ),
        body: EtkinListeOrnek(),
      ),
    ));
