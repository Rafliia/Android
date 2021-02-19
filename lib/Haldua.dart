import 'package:flutter/material.dart';

void main() => runApp(Haldua());

class Haldua extends StatelessWidget {
  List<Color> colors = [
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.brown,
    Colors.blueAccent,
    Colors.pink,
  ];

  List<String> nama = [
    "Rafli",
    "Albani",
    "Ratu",
    "Raehan",
    "Meisya",
    "Ilham",
  ];
  @override
  Widget build(BuildContext context) {
    final title = 'ListView';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('MyApp'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 300,
                            height: 400,
                            child: Card(
                              color: colors[index],
                              child: Center(child: Text(nama[index])),
                            ),
                          );
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 200,
                            height: 300,
                            child: Card(
                              color: colors[index],
                              child: Center(child: Text(nama[index])),
                            ),
                          );
                        }),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 100,
                            height: 100,
                            child: Card(
                              color: colors[index],
                              child: Center(child: Text(nama[index])),
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 100,
                            height: 100,
                            child: Card(
                              color: colors[index],
                              child: Center(child: Text(nama[index])),
                            ),
                          );
                        }),
                  ),
                  new RaisedButton(
                    textColor: Colors.white,
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text('Halaman Selanjutnya'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/Haltiga');
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
