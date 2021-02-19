import 'package:flutter/material.dart';
import 'Haldua.dart';
import 'Haltiga.dart';

void main() {
  runApp(new MaterialApp(
      // Pertama Kali dirun hal 1
      home: new Halsatu(),
      title: "Navigasi",
      //Membuat Routing
      //Daftar nama route untuk setiap halaman
      routes: <String, WidgetBuilder>{
        '/Halsatu': (BuildContext context) => Halsatu(),
        '/Haldua': (BuildContext context) => Haldua(),
        '/Haltiga': (BuildContext context) => Haltiga(),
      }));
}

//Class hal satu
class Halsatu extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      //judul Appbar
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      // icon button
      body: new Center(
        child: new IconButton(
          icon: new Icon(
            Icons.android,
            size: 50.0,
            color: Colors.green,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/Haldua');
          },
        ),
      ),
    );
  }
}
