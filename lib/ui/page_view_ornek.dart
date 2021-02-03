import 'package:flutter/material.dart';

class PageViewOrnek extends StatefulWidget {
  PageViewOrnek(Key k) : super(key: k);

  @override
  _PageViewOrnekState createState() => _PageViewOrnekState();
}

class _PageViewOrnekState extends State<PageViewOrnek> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);
  bool yatayEksen = true;
  bool pageSnapping = false;
  bool reverseSira=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            scrollDirection:
                yatayEksen == true ? Axis.horizontal : Axis.vertical,
            reverse: reverseSira,
            pageSnapping: pageSnapping,
            controller: myController,
            onPageChanged: (index) {
              debugPrint("page change gelen index $index");
            },
            children: [
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.lightBlue,
                child: Center(
                    child: Column(
                      children: [
                        Text(
                  "Sayfa 1",
                  style: TextStyle(fontSize: 31),
                ),
                        RaisedButton(child: Text("3. Sayfaya Git"),onPressed: (){
                          myController.jumpToPage(2);
                        })
                      ],
                    )),
              ),
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.greenAccent,
                child: Center(
                    child: Text(
                  "Sayfa 2",
                  style: TextStyle(fontSize: 31),
                )),
              ),
              Container(
                width: double.infinity,
                height: 250,
                color: Colors.yellow,
                child: Center(
                    child: Text(
                  "Sayfa 3",
                  style: TextStyle(fontSize: 31),
                )),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 200,
            color: Colors.red,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Yatay EKsende Çalış ( Sayfa eksen yönü belirtir)",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Checkbox(
                          value: yatayEksen,
                          onChanged: (b) {
                            setState(
                              () {
                                yatayEksen = b;
                              },
                            );
                          })
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Page Snapping (Geçişleri kapatıp açar) ",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Checkbox(
                          value: pageSnapping,
                          onChanged: (b) {
                            setState(
                              () {
                                pageSnapping = b;
                              },
                            );
                          })
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Ters Sırada Çalış (Sayfa sırasını ters çevirir)",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Checkbox(
                          value: reverseSira,
                          onChanged: (b) {
                            setState(
                                  () {
                                reverseSira = b;
                              },
                            );
                          })
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ],
    );
  }
}
