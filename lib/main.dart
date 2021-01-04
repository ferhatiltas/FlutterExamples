import 'package:flutter/material.dart';
import 'package:ornek_image_text/ui/grid_view_kullanimi.dart';
import 'package:ornek_image_text/ui/navigasyon_islemleri.dart';

import 'ui/custom_scroll_silvers.dart';

void main() => runApp(
      MaterialApp(
        title: "Flutter Examples",
        // color: Colors.blue,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: NavigasyonIslemleri(),
      ),
    );
