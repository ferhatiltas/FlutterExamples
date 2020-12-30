import 'package:flutter/material.dart';

class ListeOrnekleri extends StatelessWidget {
  // Liste için veri kaynağı :
  List<int> listeNumaralari = List.generate(300, (index) => index);
  List<String> listeAltBaslik =
      List.generate(300, (index) => "Liste elemanı alt başlık $index");

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      // .map metodu ile listeyi widgete dönüştürüp sonrasında toList ile tekrardan listeye dönüştüreceğiz
      children: listeNumaralari
          .map(
            (oAnkiEleman) => Column(
              children: <Widget>[
                Container(
// Center dersek başlar başlamaz öğeler uygulamanın tam ortasından başlayacak
// Container ise en baştan başlatacak, nesneleri
                  child: Card(
                    color: Colors.blue,
                    margin: EdgeInsets.only(
                        left: 17, bottom: 5, right: 17, top: 20),
                    elevation: 10,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.deepOrange,
                        child: Icon(Icons.account_circle),
                        radius: 17,
                      ),
                      title: Text(
                        "Liste eleman başlık $oAnkiEleman",
                        style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        listeAltBaslik[oAnkiEleman  ],
                        style: TextStyle(
                          fontSize: 15,
                          fontStyle: FontStyle.normal,
                          color: Colors.black,
                        ),
                      ),
                      trailing: Icon(Icons.vertical_align_bottom),
                    ),
                  ),
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
