import 'package:b401_ketiga/13praktikumregis_13.dart';
import 'package:flutter/material.dart';
import '12praktikummodul_12.dart';
import '14praktikumcekjadwal_14.dart';
import 'functionstuff.dart';

//4th page

class HalamanSebelas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanSebelas();
}

class KondisiHalamanSebelas extends State<HalamanSebelas> {
  //homebarBack
  void homebuttonpressed() {
    Navigator.pop(context);
  }

  //regis
  void regisbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanTigabelas()));
  }

  //aslab
  void modulbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanDuabelas()));
  }

  //cek jadwal
  void jadwalbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanEmpatbelas()));
  }

  //build!
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: new AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: homebuttonpressed,
            color: Colors.red[900]),
        title: new Center(
            child: new Text(
          "Praktikum Rdig",
          style: TextStyle(color: Colors.red[900]),
        )),
        actions: <Widget>[
          new Icon(
            Icons.info,
            color: Colors.red[900],
          )
        ],
      ),

      //body
      body: new Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            //Rich Textbox
            guitextwrpp(
                'Selamat datang di Portal Praktikum Rangkaian Digital. Disini anda bisa Registrasi, Mengunduh Modul, dan Melihat Jadwal praktikum anda.',
                300.0,
                100),

            //padding
            SizedBox(height: 50),

            //Registrasi
            TextButton(
                onPressed: regisbuttonpressed,
                child: guibuttonn1('Registrasi Praktikum')),
            SizedBox(height: 10),
            //Modul
            TextButton(
                onPressed: modulbuttonpressed, child: guibutton('Modul')),
            SizedBox(height: 10),
            //cek jadwal
            TextButton(
                onPressed: jadwalbuttonpressed, child: guibutton('Cek Jadwal')),
            SizedBox(height: 10),
            //Gamabar bawah
            Expanded(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logotekkom.png',
                            width: 100, height: 100),
                        Image.asset('assets/images/logob401.png',
                            width: 100, height: 100),
                        Image.asset('assets/images/logoits.png',
                            width: 100, height: 100)
                      ],
                    ))),
            SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
