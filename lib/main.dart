import 'package:flutter/material.dart';
import 'package:ornek_image_text/ui/date_time_picker.dart';
import 'package:ornek_image_text/ui/diger_form_elemanlari.dart';
import 'package:ornek_image_text/ui/form_textformfield.dart';
import 'package:ornek_image_text/ui/stepper_kullanimi.dart';
import 'package:ornek_image_text/ui/text_field.dart';
import 'package:ornek_image_text/ui/grid_view_kullanimi.dart';
import 'package:ornek_image_text/ui/navigasyon_islemleri.dart';
import 'package:ornek_image_text/ui/resim_ve_buton.dart';

import 'ui/custom_scroll_silvers.dart';

void main() => runApp(
      MaterialApp(
        initialRoute: "/flutterExapmles",
        // ilk açılan route hangisi olsun ? der
        onUnknownRoute: (RouteSettings settings) =>
            MaterialPageRoute(builder: (context) => ASayfasi()),
        // Bir hata çıktığında bizi ASayfasına gönderecek
        routes: {
          // Kendi routlarımızı burada oluşturup daha sonra Navigator metodunun içine routs yazmamıza gerek kalmaz sadece isimi yazarsak yeterli
          '/': (context) => NavigasyonIslemleri(),
          // '/' olursa uygulama çalışır çalışmaz ilk başta nereden açılacağına karar verilir ve home: gerek kalmaz
          '/APage': (context) => ASayfasi(),
          '/flutterExapmles': (context) => NavigasyonIslemleri(),
          '/dateTime': (context) => TarihSaatOrnegi(),
          '/textFormFeild': (context) => FormveTextFormFeild(),
          '/digerFormElemanlari': (context) => DigerFormElemanlari(),
          '/stepperKullanimi': (context) => StepperOrnek(),
          '/DPage': (context) => DSayfasi(),
          '/GPage': (context) => GSayfasi(),
        },

        onGenerateRoute: (RouteSettings settings) {
          // Listelerde dinamik tıklanma özelliği eklemek için oluşturulur ama isimlendirilmiş route kullanmalıyız
          List<String> pathElemanlari = settings.name.split("/");
          if (pathElemanlari[1] == "detay") {
            return MaterialPageRoute(
                builder: (context) => ListeDetay(int.parse(pathElemanlari[2])));
          }
        },
        title: "Flutter Examples",
        // color: Colors.blue,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // router '/' kullanıldığı için bunu bir daha kullanamayız.   = home: NavigasyonIslemleri(),
      ),
    );
