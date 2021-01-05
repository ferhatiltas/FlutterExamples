import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String baslik = "B Sayfası";
    // TODO: implement build
    return WillPopScope(  // App Barda sol üstte kendiliğinden çıkan geri tuşunu kontrol etmek içindir

      onWillPop: (){
        print("on Will Pop Çalıştı");
        Navigator.maybePop(context,false);
        return Future.value(true); // true ise geri tuşu işlevsiz olacaktır
      },


      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Navigasyon İşlemleri",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                elevation: 10,
                child: Text(
                  "A Sayfasına Git",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                color: Colors.green,
                onPressed: () {
                  Navigator.push<bool>(
                    context,
                    MaterialPageRoute(builder: (context) => ASayfasi()),
                  );
                },
              ),
              RaisedButton(
                elevation: 10,
                child: Text(
                  "B Sayfasına Git",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                color: Colors.red,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BSayfasi(baslik)),
                  );
                },
              ),
              RaisedButton(
                elevation: 10,
                child: Text(
                  "C Sayfasına Git ve Geri Gel",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                color: Colors.yellow,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CSayfasi()),
                  );
                },
              ),
              RaisedButton(
                elevation: 10,
                child: Text(
                  "D Sayfasına Git ve Gelirken Veri Getir",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                color: Colors.deepPurple,
                onPressed: () {
                  Navigator.push<bool>(
                    context,
                    MaterialPageRoute(builder: (context) => DSayfasi()),
                  ).then((popOlayindanSonraGelenDeger) {
                    // push bittikten sonra ne olacağı burada yazılır
                    print(
                        "Pop İşleminden Sonra Gelen Değer : $popOlayindanSonraGelenDeger");
                  });
                },
              ),
            ],
          ),
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
