
import 'package:flutter/material.dart';
import 'package:ornek_image_text/ui/custom_scroll_silvers.dart';

class GridViewKullanimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
      primary: false,
      // Ekran yukarı,aşağı veya sağa,sola doğru kaydırılmak istendiğinde en son çıkan yumuşak dokulu renkli gölgelik
      scrollDirection: Axis.vertical,
      // yön
      padding: EdgeInsets.all(10),
      itemCount: 100,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector( // tıklanma özelliği vs kazandırır
          child: Container(
            margin: EdgeInsets.all(15),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.red.shade900, width: 8),
                borderRadius: new BorderRadius.all(new Radius.circular(25)),
                boxShadow: [
                  new BoxShadow(
                      // gölgelik
                      color: Colors.grey.shade800,
                      offset: new Offset(8, 8),
                      blurRadius: 10)
                ],
                color: Colors.red,
                ),
            child: Text(
              "$index",
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 29,
              ),
            ),
          ),
          onTap: (){print("dsa");},
        );
      },
      //  crossAxisCount: 2, // satırdaki eleman sayısı

      //  crossAxisSpacing: 20,

      //   mainAxisSpacing: 40,
    );
  }
}
/*
Container(
        alignment: Alignment.center,
        color: Colors.purpleAccent,
        child: RaisedButton(onPressed: (){},
        color: Colors.blue,
        child: Text("Tıkla",
        style: TextStyle(color: Colors.white,
        fontStyle: FontStyle.normal,
        fontSize: 29,),),),
      ),
        Container(
          alignment: Alignment.center,
          color: Colors.purpleAccent,
          child: RaisedButton(onPressed: (){},
            color: Colors.blue,
            child: Text("Tıkla",
              style: TextStyle(color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 29,),),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purpleAccent,
          child: RaisedButton(onPressed: (){},
            color: Colors.blue,
            child: Text("Tıkla",
              style: TextStyle(color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 29,),),),
        ),
    Container(
    alignment: Alignment.center,
    color: Colors.purpleAccent,
    child: RaisedButton(onPressed: (){},
    color: Colors.blue,
    child: Text("Tıkla",
    style: TextStyle(color: Colors.white,
    fontStyle: FontStyle.normal,
    fontSize: 29,),),),
    ),
        Container(
          alignment: Alignment.center,
          color: Colors.purpleAccent,
          child: RaisedButton(onPressed: (){},
            color: Colors.blue,
            child: Text("Tıkla",
              style: TextStyle(color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 29,),),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purpleAccent,
          child: RaisedButton(onPressed: (){},
            color: Colors.blue,
            child: Text("Tıkla",
              style: TextStyle(color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 29,),),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purpleAccent,
          child: RaisedButton(onPressed: (){},
            color: Colors.blue,
            child: Text("Tıkla",
              style: TextStyle(color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 29,),),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purpleAccent,
          child: RaisedButton(onPressed: (){},
            color: Colors.blue,
            child: Text("Tıkla",
              style: TextStyle(color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 29,),),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purpleAccent,
          child: RaisedButton(onPressed: (){},
            color: Colors.blue,
            child: Text("Tıkla",
              style: TextStyle(color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 29,),),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purpleAccent,
          child: RaisedButton(onPressed: (){},
            color: Colors.blue,
            child: Text("Tıkla",
              style: TextStyle(color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 29,),),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purpleAccent,
          child: RaisedButton(onPressed: (){},
            color: Colors.blue,
            child: Text("Tıkla",
              style: TextStyle(color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 29,),),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purpleAccent,
          child: RaisedButton(onPressed: (){},
            color: Colors.blue,
            child: Text("Tıkla",
              style: TextStyle(color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 29,),),),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.purpleAccent,
          child: RaisedButton(onPressed: (){},
            color: Colors.blue,
            child: Text("Tıkla",
              style: TextStyle(color: Colors.white,
                fontStyle: FontStyle.normal,
                fontSize: 29,),),),
        ),*/
