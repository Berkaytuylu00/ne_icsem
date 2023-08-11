import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: Theme.of(context)
            .textTheme
            .apply(bodyColor: Colors.white, displayColor: Colors.white),
      ),
      home: icecek(),
    );
  }
}

class icecek extends StatefulWidget {
  const icecek({super.key});

  @override
  State<icecek> createState() => _icecekState();
}

int yanitlar = 0;

class _icecekState extends State<icecek> {
  List<String> icecek = [
    'TIKLA GELSİN',
    'Soguk İcecek : ORANGE MANGO',
    'Soguk İcecek : İCE LATTE ',
    'Soguk İcecek : İCE AMERİCANO',
    'Sıcak İçecek : ESPRESSO',
    'Sıcak İçecek : TÜRK KAHVESİ',
    'Sıcak İçecek : CAPPUCCİNO'
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[400],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text(
          'NE İÇSEM',
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: Colors.greenAccent[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 220,
              margin: EdgeInsets.only(bottom: 20),
              child: Image.asset('assets/images/icecek_kategorisi.jpg'),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
              child: ListTile(
                leading: Icon(Icons.local_drink_sharp),
                title: Text(
                  'SOĞUK İÇECEK',
                  style: TextStyle(color: Colors.blue[600], fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                    yanitlar = Random().nextInt(3) + 1;
                  });
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
              child: ListTile(
                leading: Icon(
                  Icons.local_drink_sharp,
                  color: Colors.brown,
                ),
                title: Text(
                  'SICAK İÇECEKLER',
                  style: TextStyle(color: Colors.brown[800], fontSize: 20),
                ),
                onTap: () {
                  setState(() {
                    yanitlar = Random().nextInt(3) + 4;
                  });
                },
              ),
            ),
            Container(
              height: 150,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                child: Text(
                  icecek[yanitlar],
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
