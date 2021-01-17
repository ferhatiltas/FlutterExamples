

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EtkinListeOrnek extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];

  @override
  Widget build(BuildContext context) {
    ogrenciVerileriniGetir();
    // TODO: implement build
    return ListView.builder(
        itemCount: 20, // yazmazsak liste sonsuza kadar dönecektir
        itemBuilder: (context, index) => Card(
              color: index % 2 == 0 ? Colors.blue : Colors.green,
              elevation: 5,
              child: ListTile(
                leading: Icon(Icons.add_call),
                title: Text(tumOgrenciler[index]._isim),
                subtitle: Text(tumOgrenciler[index]._aciklama),
                trailing: Icon(Icons.add),
                onTap: () {
                  print(tumOgrenciler[index].toString());
                  alerDialogGoster(context);
                },
                onLongPress: () {
                  print(tumOgrenciler[index].toString());
                },
              ),
            ));
  }

  void ogrenciVerileriniGetir() {
    tumOgrenciler = List.generate(
        300,
        (index) => Ogrenci("Öğrenci $index Adı", "Öğrenci $index Açıklaması",
            index % 2 == 0 ? true : false));
  }

  void alerDialogGoster(BuildContext ctx) {
    showDialog(
        context: ctx,
        barrierDismissible: false,
        builder: (ctx) {
          return AlertDialog(
            title: Text("Alert Dialog Başlığı"),
            content: Text(
                "Alert Dialog içeriği \n ikinci satır\n üçüncü satır \n\n\n\n\n"),
            actions: <Widget>[
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                      onPressed: () {
                        print("object");

                      },
                      child: Text("Tamam")),
                  FlatButton(
                    onPressed: () {
                      print("object");
                      Navigator.of(ctx).pop();

                    },
                    child: Text("Kapat"),
                  ),
                ],
              )
            ],
          );
        });
  }
}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    // TODO: implement toString
    return "Seçilen öğrencini adı : $_isim açıklaması : $_cinsiyet";
  }
}
