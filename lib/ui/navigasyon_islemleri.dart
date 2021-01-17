import 'package:flutter/material.dart';
import 'package:ornek_image_text/ui/date_time_picker.dart';
import 'package:ornek_image_text/ui/diger_form_elemanlari.dart';
import 'package:ornek_image_text/ui/form_textformfield.dart';
import 'package:ornek_image_text/ui/my_home_stateful_widget.dart';
import 'package:ornek_image_text/ui/resim_ve_buton.dart';
import 'package:ornek_image_text/ui/row_column_odevi.dart';
import 'package:ornek_image_text/ui/stepper_kullanimi.dart';
import 'package:ornek_image_text/ui/text_field.dart';

import 'custom_scroll_silvers.dart';
import 'etkin_liste_ornek.dart';
import 'grid_view_kullanimi.dart';
import 'liste_ornekleri.dart';

class NavigasyonIslemleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String baslik = "B Sayfası";
    // TODO: implement build
    return WillPopScope(
      // App Barda sol üstte kendiliğinden çıkan geri tuşunu kontrol etmek içindir

      onWillPop: () {
        print("on Will Pop Çalıştı");
        Navigator.maybePop(context, false);
        return Future.value(true); // true ise geri tuşu işlevsiz olacaktır
      },

      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Examples",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "Row and Column",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.deepPurple.shade300,
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(builder: (context) => RowColumnOdev()),
                    );
                  },
                ),
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "Image and Container",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResimveButonTurleri()),
                    );
                  },
                ),
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "Counter ++ and --",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.pink,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHome()));
                  },
                ),
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "Sliver AppBar",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CollapsableToolBarOrnek()),
                    );
                  },
                ),
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "Listview",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.deepPurple,
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(builder: (context) => ListeOrnekleri()),
                    ).then((popOlayindanSonraGelenDeger) {
                      // push bittikten sonra ne olacağı burada yazılır
                      print(
                          "Pop İşleminden Sonra Gelen Değer : $popOlayindanSonraGelenDeger");
                    });
                  },
                ),
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "ListView and Alert Dialog",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EtkinListeOrnek()),
                    );
                  },
                ),
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "GridView",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  color: Colors.yellow,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GridViewKullanimi()),
                    );
                  },
                ),
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "Form İslemlerine Git",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.deepPurple,
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TextFieldOzellikleri()),
                    );
                  },
                ),
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "TextFormFeild  Git",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.pink,
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FormveTextFormFeild()),
                    );
                  },
                ),
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "Diğer Form İşlemlerine Git",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  color: Colors.yellow,
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DigerFormElemanlari()),
                    );
                  },
                ),
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "Tarih Saat İşlem Git",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.teal,
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TarihSaatOrnegi()),
                    );
                  },
                ),
                RaisedButton(
                  elevation: 10,
                  child: Text(
                    "Stepper Örneğine Git",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: Colors.red.shade900,
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(builder: (context) => StepperOrnek()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListeSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lİste Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              //  Navigator.push(context, MaterialPageRoute(builder: (context) => ListeDetay(index)));
              Navigator.pushNamed(context, "/detay/$index");
            },
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Liste Elemanı : $index",
                style: TextStyle(fontSize: 20),
              ),
            )),
          );
        },
        itemCount: 50,
      ),
    );
  }
}

class ListeDetay extends StatelessWidget {
  int tiklanilanIndexDegeri = 0;

  ListeDetay(this.tiklanilanIndexDegeri);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lİste Detay Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Liste Elemanı : $tiklanilanIndexDegeri ",
          style: TextStyle(fontSize: 25),
        ),
      )),
    );
  }
}

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "A SAYFASI",
              style: TextStyle(
                color: Colors.red.shade900,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  String gelenBaslikVerisi;

  BSayfasi(String baslik) {
    // {String baslik} şeklinde yazsaydım isimlendirilmiş contructor olacaktı parametreyi isteğe bağlı atayacaktım
    this.gelenBaslikVerisi = baslik;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          gelenBaslikVerisi,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              gelenBaslikVerisi,
              style: TextStyle(
                color: Colors.deepPurple.shade900,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "C Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "C SAYFASI",
              style: TextStyle(
                color: Colors.deepPurple.shade900,
                fontSize: 25,
              ),
            ),
            RaisedButton(
              elevation: 10,
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.grey.shade300,
              child: Text(
                "Geri",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
            RaisedButton(
              elevation: 10,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ASayfasi()));
              },
              color: Colors.grey.shade800,
              child: Text(
                "A Sayfasına Geri Git",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "D Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "D SAYFASI",
              style: TextStyle(
                color: Colors.deepPurple.shade900,
                fontSize: 25,
              ),
            ),
            RaisedButton(
              elevation: 10,
              onPressed: () {
                Navigator.pop<bool>(context, true);
                // true demek ürün silindi demek
                // false demek  ürün silinemedi veya kullanıcı vazgeçti
              },
              color: Colors.grey.shade300,
              child: Text(
                "Geri Dön ve Veri Gönder",
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ESayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "E SAYFASI",
              style: TextStyle(
                color: Colors.red.shade900,
                fontSize: 25,
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => FSayfasi()));
              },
              child: Text("F Sayfasına Git"),
            )
          ],
        ),
      ),
    );
  }
}

class FSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "F Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "F SAYFASI",
              style: TextStyle(
                color: Colors.red.shade900,
                fontSize: 25,
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/GPage");
              },
              child: Text("G Sayfasına Git"),
            ),
          ],
        ),
      ),
    );
  }
}

class GSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "G Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "G SAYFASI",
              style: TextStyle(
                color: Colors.red.shade900,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
