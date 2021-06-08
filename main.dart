import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Routing Navigation',
    initialRoute: '/',
    routes: {
      '/': (context) => Menu(),
      HalamanPertama.routeName: (context) => HalamanPertama(),
      HalamanKedua.routeName: (context) => HalamanKedua(),
      HalamanKetiga.routeName: (context) => HalamanKetiga(),
    },
  ));
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QUIS_MOBILE 2'),
      ),
      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          children: <Widget>[
            RaisedButton(
              child: Text('DATA KELOMPOK'),
              onPressed: () {
                Navigator.pushNamed(context, HalamanPertama.routeName);
              },
            ),
            RaisedButton(
              child: Text('TAMBAH DATA'),
              onPressed: () {
                Navigator.pushNamed(context, HalamanKedua.routeName);
              },
            ),
            RaisedButton(
              child: Text('CONTACT PERSON'),
              onPressed: () {
                Navigator.pushNamed(context, HalamanKetiga.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class HalamanPertama extends StatelessWidget {
  static const String routeName = "/halamanPertama";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DATA KELOMPOK"),
      ),
      body: Column(children: <Widget>[
        Text('Nama Kelompok :'),
        Text('DAVID ADRIANUS MARBUN B'),
        Text('LEONARDO SAKTI'),
        Text('MUHAMMAD SAID AQIEL'),
        Text('RAHMAD AGINTA S. MILALA'),
        Text('M. HAFIZH AL FARISI'),
      ]),
    );
  }
}

class HalamanKedua extends StatelessWidget {
  static const String routeName = "/halamanKedua";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TAMBAH DATA"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Kembali'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

class HalamanKetiga extends StatelessWidget {
  static const String routeName = "/halamanKetiga";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CONTACT PERSON"),
      ),
      body: Column(children: <Widget>[
        Text('DAVID ADRIANUS MARBUN B : 081374508862'),
        Text('LEONARDO SAKTI : 0813746588992'),
        Text('Puspita Wanny : 083179148333'),
        Text('RAHMAD AGINTA S. MILALA : 082165256790'),
        Text('M. HAFIZ AL FARIZI : 085664472005'),
      ]),
    );
  }
}

class HalamanKeenam extends StatelessWidget {
  static const String routeName = "/halamanKeenam";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TETAP BERKARYA"),
      ),
      body: Center(
        child: Text('Halaman Keenam'),
      ),
    );
  }
}
