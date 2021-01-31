
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("ferhatiltas"),
            accountEmail: Text("iltasferhat@gmail.com"),
            currentAccountPicture: Image.network(
                "https://avatars3.githubusercontent.com/u/64915111?s=460&u=40bc9afc7d3a0a121c009b6b24eb007ad93cda24&v=4"),
            otherAccountsPictures: [
              CircleAvatar(
                backgroundColor: Colors.purple,
                child: Text("AK"),
              ),
              CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Text("MT"),
              ),
            ],
          ),
          Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Ana Sayfa"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text("Paylaş"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: Icon(Icons.star_half),
                    title: Text("Yıldız Ver"),
                    trailing: Icon(Icons.arrow_forward_ios),
                  ),
                  Divider(),
                  InkWell(
                    splashColor: Colors.red,
                    onTap: () {},
                    child: ListTile(
                      leading: Icon(Icons.star_half),
                      title: Text("Yıldız Ver"),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  AboutListTile(
                    applicationName: "Flutter Dersleri",
                    applicationIcon: Icon(Icons.wrong_location_outlined),
                    applicationVersion: "1.0",
                    child: Text("Hakkında"),
                    applicationLegalese: "Uygulama Lisanslarını İnceleyiniz.",
                    icon: Icon(Icons.keyboard),
                    aboutBoxChildren: [
                      Text("Bilgi 1"),
                      Text("Bilgi 2"),
                      Text("Bilgi 3"),
                      Text("Bilgi 4"),
                    ],)
                ],
              ))
        ],
      ),
    );
  }
}
