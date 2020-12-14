import 'package:flutter/material.dart';
import 'package:ornek_image_text/ui/row_column_odevi.dart';

import 'ui/resim_ve_buton.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text("Flutter Örnekleri"),
      ),
        body: RowColumnOdev()
    ),
    );
  }
}
