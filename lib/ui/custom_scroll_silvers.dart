import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math' as matematik;

class CollapsableToolBarOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("Silver App Bar"),
          backgroundColor: Colors.purple,
          expandedHeight: 300,
          floating: false,
          // Bu özellik Silver appın altındaki liste
          // aşağıdan yukarıyo doğru çekildiğinde AppBar hemen ortaya çıkar false olursa daha güzel olur
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              "assets/images/logo.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(sabitListeElemanlari()),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            _dinamikElemanUretenFonksiyon,
            childCount:
                6, //dinamik olarak 6 tane _dinamikElemanUretenFonksiyon oluşacak
          ),
        )
      ],
    );
  }

  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      alignment: Alignment.center,
      height: 120,
      color: rastgeleRenkUret(),
      child: Text("Dinamik Liste Elemanı ${index + 1}",
          style: TextStyle(fontSize: 20), textAlign: TextAlign.center),
    );
  }

  Color rastgeleRenkUret() {
    // 0 ile 255 arasında rastgele sayı üretecek ürettiği bu sayıları fromARGB metodu aracılığı ile renk değerlerine atayacak
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        alignment: Alignment.center,
        height: 120,
        color: Colors.cyanAccent,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 120,
        color: Colors.lightGreenAccent,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 120,
        color: Colors.yellow,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 120,
        color: Colors.red,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 120,
        color: Colors.green,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        alignment: Alignment.center,
        height: 120,
        color: Colors.blue,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }
}
