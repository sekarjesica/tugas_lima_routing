import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text('About'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/portofolio');
              },
              child: Text('Portofolio'),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Text('Contact'),
            ),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Image.asset(
              'asset/image/jejes.jpg',
              width: 250,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(padding: EdgeInsets.fromLTRB(0, 12, 0, 12)),
            new Text(
              "Perkenalkan Nama Saya Sekar Ananta Putri Jesica, Prodi Teknik Informatika kelas 2A, Politeknik Negeri Banyuwangi. ",
              maxLines: 4,
              overflow: TextOverflow.clip,
              style: TextStyle(fontSize: 18, color: Colors.black),
              textAlign: TextAlign.center,
            ),
          ],
        ));
  }
}

class PortofolioPage extends StatelessWidget {
  final List<String> foto = [
    'asset/image/doraemon.jpg',
    'asset/image/haikyuu.jpg',
    'asset/image/subasa.jpg',
    'asset/image/naruto.jpg',
    'asset/image/jujutsu_kaisen.jpg',
    'asset/image/one_piece.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portofolio'),
      ),
      body: ListView.builder(
        itemCount: foto.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: ClipRRect(
                child: Image.asset(
                  foto[index],
                  width: 350,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Icon(
                Icons.account_circle,
                size: 75,
                color: Colors.blueAccent,
              ),
            ),
            Center(
              child: Text("Nama : Sekar Ananta Putri Jesica\n"
                  "Nim : 362055401022\n"
                  "Prodi : D3-Teknik Informatika\n"
                  "Email : sekaranantapj@gmail.com"),
            ),
          ],
        ));
  }
}
