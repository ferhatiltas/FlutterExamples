import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String baslik = "B Sayfası";
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigasyon İşlemleri",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            RaisedButton(
              child: Text(
                "A Sayfasına Git",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ASayfasi()),
                );
              },
            ),
            RaisedButton(
              child: Text(
                "B Sayfasına Git",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BSayfasi(baslik)),
                );
              },
            ),
          ],
        ),
      ),
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
  BSayfasi(String baslik){ // {String baslik} şeklinde yazsaydım isimlendirilmiş contructor olacaktı parametreyi isteğe bağlı atayacaktım
    this.gelenBaslikVerisi=baslik;
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
