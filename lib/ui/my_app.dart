import 'package:flutter/material.dart';
import 'package:ornek_image_text/ui/my_home_stateful_widget.dart';
import 'package:ornek_image_text/ui/row_column_odevi.dart';
import 'resim_ve_buton.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Examples"),
          ),
          body: ResimveButonTurleri()),
    );
  }
}
