import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFieldOzellikleri extends StatefulWidget {
  @override
  _TextFieldOzellikleriState createState() => _TextFieldOzellikleriState();
}

class _TextFieldOzellikleriState extends State<TextFieldOzellikleri> {
  String girilenMetin = "";
  int maxLine = 1;
  FocusNode _focusNode;
  TextEditingController textController1;

  @override
  void initState() {
    // class ilk açıldığında burası çalışır
    // TODO: implement initState
    super.initState();
    _focusNode = FocusNode();
    textController1 = TextEditingController(text: "Varsayılan"); // ilk açıldığında bu değer textField in içine girer
    _focusNode.addListener(() {
      // değişikliğin olması için addListener kullan
      setState(() {
        // ekranda bir değişiklik olacaksa setState kullan
        if (_focusNode.hasFocus) {
          //focus varsa

          maxLine = 3;
        } else
          maxLine = 1;
      });
    });
  }

  @override
  void dispose() {
    // app kapatıldığında çalşır
    // TODO: implement dispose
    _focusNode.dispose();
    textController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İnput İslemleri"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // bu butona tıklanıldığında içerideki yapıya focus özelliği verilecek
          FocusScope.of(context).requestFocus(_focusNode);
        },
        child: Icon(Icons.ac_unit),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            width: double.infinity,
            height: 200,
            color: Colors.blue,
            child: (Align(
              alignment: Alignment.center, // ortadan başlat
              child: Text(girilenMetin),
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              // keyboardType: TextInputType.number, // sadece numara girişi olmasını istiyorsak kullanırız
              maxLines: maxLine,
              // en fazla ? satır olsun
              controller: textController1,
              maxLength: 10,
              // en fazla 10 karakter giriş yapsın
              focusNode: _focusNode,
              decoration: InputDecoration(
                  hintText: "Metni Giriniz",
                  labelText: "Başlık",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  // textin girildiği bölgeyi yuvarlak yapar
                  prefixIcon: Icon(Icons.arrow_forward_ios),
                  // sol taraftaki icon
                  suffixIcon: Icon(Icons.add),
                  //sağ taraftaki icon
                  filled: true,
                  fillColor: Colors.blue.shade50),

              onChanged: (String s) => debugPrint("On Changed : $s"),
              // her bir harfe tıklanıldığında
              onSubmitted: (String s) {
                debugPrint("On Submitted : $s");
                girilenMetin =
                    s; // klavyeden girilen değeri text olarak atayacağız
              },
              // klavyedeki tik butonuna tıklanıldıpında
              cursorColor: Colors.red, // imlecin rengi
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              // keyboardType: TextInputType.number, // sadece numara girişi olmasını istiyorsak kullanırız
              maxLines: 1,
              // en fazla ? satır olsun
              maxLength: 10,
              // en fazla 10 karakter giriş yapsın
              decoration: InputDecoration(
                  hintText: "Metni Giriniz",
                  labelText: "Başlık",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  // textin girildiği bölgeyi yuvarlak yapar
                  prefixIcon: Icon(Icons.arrow_forward_ios),
                  // sol taraftaki icon
                  suffixIcon: Icon(Icons.add),
                  //sağ taraftaki icon
                  filled: true,
                  fillColor: Colors.blue.shade50),

              onChanged: (String s) => debugPrint("On Changed : $s"),
              // her bir harfe tıklanıldığında
              onSubmitted: (String s) {
                debugPrint("On Submitted : $s");
                girilenMetin =
                    s; // klavyeden girilen değeri text olarak atayacağız
              },
              // klavyedeki tik butonuna tıklanıldıpında
              cursorColor: Colors.red, // imlecin rengi
            ),
          ),
        ],
      ),
    );
  }
}
