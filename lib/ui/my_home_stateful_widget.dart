
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  final String title;
  int sayac = 0;

  // süslü parantez içine koyarsak bu sınıf çağrıldığında parametre almayabilir,
  // ama parametre alırsa bu constructor çalışır
  MyHome({this.title});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyHomeState();
  }
}

class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_circle_outline,
          color: Colors.white,
        ),
        onPressed: () {
          setState(() {
            widget.sayac++;
          });
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text(
                  "Artır",
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
                color: Colors.green,
                onPressed: () {
                  setState(() {
                    widget.sayac++;
                  });
                }),
            Text(
              "Sayaç : ${widget.sayac}",
              style: TextStyle(
                fontSize: 31,
                color: widget.sayac <=0 ? Colors.red : Colors.green,

              ),
            ),
            RaisedButton(
                child: Text(
                  "Azalt",
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
                color: Colors.red,
                onPressed: () {
                  setState(() {
                    widget.sayac--;
                  });
                }),
          ],
        ),
      ),
    );
  }
}