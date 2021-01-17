import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DigerFormElemanlari extends StatefulWidget {
  @override
  _DigerFormElemanlariState createState() => _DigerFormElemanlariState();
}

class _DigerFormElemanlariState extends State<DigerFormElemanlari> {
  bool checkBoxState = false;
  String sehir = "";
  bool switchSecili = false;
  double sliderDeger = 10;
  String secilenRenk="Kirmizi";
  String secilenSehir="Batman";
  List<String> sehirler=["Batman","Diyarbakır","Şırnak","Mardin"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.padding),
      ),
      appBar: AppBar(
        title: Text("Diğer Form Elemanları"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState = secildi;
                });
              },
              activeColor: Colors.green.shade900,
              title: Text("Başlık"),
              subtitle: Text("Alt Başlık"),
              secondary: Icon(Icons.hail),
              selected: true,
            ),
            RadioListTile<String>(
              value: "Ankara",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  print("Seçilen Şehir : $deger");
                });
              },
              title: Text("Ankara"),
              subtitle: Text("Pavyon"),
            ),
            RadioListTile<String>(
              value: "Batman",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  print("Seçilen Şehir : $deger");
                });
              },
              title: Text("Batman"),
              subtitle: Text("Petrol"),
            ),
            RadioListTile<String>(
              value: "Mardin",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  print("Seçilen Şehir : $deger");
                });
              },
              title: Text("Mardin"),
              subtitle: Text("Tarih"),
            ),
            SwitchListTile(
              value: switchSecili,
              onChanged: (deger) {
                setState(() {
                  print("$deger");
                  switchSecili = deger;
                });
              },
              title: Text("Switch Başlık"),
              subtitle: Text("Switch Alt Başlık"),
              secondary: Icon(Icons.emoji_emotions_outlined),
            ),
            Slider(
              value: sliderDeger,
              onChanged: (deger) {
                setState(() {
                  sliderDeger = deger;
                });
              },
              min: 1,
              max: 10,
              divisions: 10,
              label: sliderDeger.toString(),

            ),

            DropdownButton<String>(items: [
              DropdownMenuItem<String>(child: Row(
                children: <Widget>[
                  Container(width: 24,
                    height: 24,
                    color: Colors.red,
                    margin: EdgeInsets.only(right: 10),),
                  Text("Kırmızı"),
                ],
              ), value: "Kirmizi",),
              DropdownMenuItem<String>(child: Row(
                children: <Widget>[
                  Container(width: 24,
                    height: 24,
                    color: Colors.blue,
                    margin: EdgeInsets.only(right: 10),),
                  Text("Mavi"),
                ],
              ), value: "Mavi",),
              DropdownMenuItem<String>(child: Row(
                children: <Widget>[
                  Container(width: 24,
                    height: 24,
                    color: Colors.green,
                    margin: EdgeInsets.only(right: 10),),
                  Text("Yeşil"),
                ],
              ), value: "Yesil",),

            ], onChanged: (String secilen) {
              setState(() {
                secilenRenk = secilen;
              });
            },
              hint: Text("Seciniz"),
              value: secilenRenk,
            ),

            DropdownButton<String>(items: sehirler.map((oankiSehir) { // listeden çekildi
              return DropdownMenuItem<String>(
                child: Text(oankiSehir), value: oankiSehir,);
            }).toList(),
              onChanged: (s){
                setState(() {
                  secilenSehir = s;
                });
              },
              value: secilenSehir,
            ),
          ],
        ),
      ),
    );
  }
}
