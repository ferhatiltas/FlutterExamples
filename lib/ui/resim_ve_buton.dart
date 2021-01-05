import 'package:flutter/material.dart';

class ResimveButonTurleri extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

      body: Column(
        children: <Widget>[
          Text(
            "Image ve Button Türleri",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.only(
                        left: 15, top: 15, right: 15, bottom: 5),
                    color: Colors.pinkAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.asset(
                          "assets/images/logo.png",
                          height: 70,
                          width: 70,
                        ),
                        Text(
                          "Assets Image",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.only(
                        left: 15, top: 15, right: 15, bottom: 5),
                    color: Colors.pinkAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Image.network(
                          "https://images.hdqwalls.com/wallpapers/small-memory-lp.jpg",
                          height: 70,
                          width: 70,
                        ),
                        Text(
                          "Network Image",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.only(
                        left: 15, top: 15, right: 15, bottom: 5),
                    color: Colors.pinkAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png"),
                          radius: 30,
                          backgroundColor: Colors.pink,
                        ),
                        Text(
                          "Circle Avatar",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(2),
                    margin: EdgeInsets.only(
                        left: 15, top: 15, right: 15, bottom: 5),
                    color: Colors.pinkAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FadeInImage.assetNetwork(
                            placeholder: "assets/images/download.gif",
                            image:
                            "https://images.hdqwalls.com/wallpapers/small-memory-lp.jpg"),
                        Text(
                          "Fadein Image",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          RaisedButton(
            child: Text("Geri"),
            textColor: Colors.white,
            color: Colors.deepPurple,
            onPressed: () => print("object"),
          )
        ],
      ),
    );
  }

}
