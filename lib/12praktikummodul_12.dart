import 'package:flutter/material.dart';
import 'functionstuff.dart';
import 'package:url_launcher/url_launcher.dart';

//4th page

class HalamanDuabelas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanDuabelas();
}

class KondisiHalamanDuabelas extends State<HalamanDuabelas> {
  //TopbarBack
  void backbuttonpressed() {
    Navigator.pop(context);
  }

  //p1
  void p1buttonpressed() {
    launch(
        'https://drive.google.com/file/d/1VhfbUo5Prdk2V2QAJxktQRU7Zj6cJq4R/view?usp=sharing');
  }

  //p2
  void p2buttonpressed() {
    launch(
        'https://drive.google.com/file/d/1QZx46pVPdsQELecLjp5OEbIjHr3f3J2O/view?usp=sharing');
  }

  //p3
  void p3buttonpressed() {
    launch(
        'https://drive.google.com/file/d/1Aw9ZLssoMJBB3Gf1j7N7JGvPwgvRAa_B/view?usp=sharing');
  }

  //p4
  void p4buttonpressed() {
    launch(
        'https://drive.google.com/file/d/1BvHTy7tbUE00_HbXsVCtW3B3XmYIXzUV/view?usp=sharing');
  }

  //build!
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: new AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: backbuttonpressed,
            color: Colors.red[900]),
        title: new Center(
            child: new Text(
          "Modul",
          style: TextStyle(color: Colors.red[900]),
        )),
      ),

      //body
      body: new Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            //Rich Textbox
            guitextwrp(
                'Silahkan unduh Modul dengan klik di Link yang telah disediakan.',
                300.0,
                100),

            //padding
            SizedBox(height: 10),

            //p1
            TextButton(
                onPressed: p1buttonpressed, child: guiunder('Praktikum1.pdf')),
            SizedBox(height: 10),
            //p2
            TextButton(
                onPressed: p2buttonpressed, child: guiunder('Praktikum2.pdf')),
            SizedBox(height: 10),
            //p3
            TextButton(
                onPressed: p3buttonpressed, child: guiunder('Praktikum3.pdf')),
            SizedBox(height: 10),
            //p4
            TextButton(
                onPressed: p4buttonpressed, child: guiunder('Praktikum4.pdf')),
            SizedBox(height: 10),
            //Gamabar bawah

            SizedBox(height: 20),
            Expanded(
                child: Image.asset(
              'assets/images/buku.jpg',
              width: 400,
            ))
          ],
        ),
      ),
    );
  }
}
