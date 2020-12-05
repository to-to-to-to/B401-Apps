import 'package:flutter/material.dart';
import '22infoprofherry_22.dart';
import '23infopaktadin_23.dart';
import '24infopakzaini_24.dart';
import 'functionstuff.dart';

//5th page

class HalamanLima extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanLima();
}

class KondisiHalamanLima extends State<HalamanLima> {
  //TopbarBack
  void backbuttonpressed() {
    Navigator.pop(context);
  }

  //dosen pak herry
  void dosenpakherrybuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanDuadua()));
  }

  //aslab
  void dosenpaktadinbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanDuatiga()));
  }

  //dosen pak zaini
  void dosenpakzainibuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanDuaempat()));
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
          "Dosen",
          style: TextStyle(color: Colors.red[900]),
        )),
      ),

      //body
      body: new Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            //Rich Textbox
            guitextwrpp(
                'Dosen yang bertanggung jawab di Laboraturium B401 terdiri atas 1 Kepala Lab dan 2 Dosen',
                200.0,
                100.0),

            //padding
            SizedBox(height: 2),

            //Dosen pak Herry
            TextButton(
                onPressed: dosenpakherrybuttonpressed,
                child: guicontextimg(
                    'Prof.Dr.Ir. Mauridhi Herry Purnomo, M.Eng.',
                    'assets/images/Pakherrybaru.jpg',
                    300.0,
                    180.0,
                    150.0,
                    150.0)),

            SizedBox(height: 10),
            //Dosen pak Tadin
            TextButton(
                onPressed: dosenpaktadinbuttonpressed,
                child: guicontextimg(
                    'Muhtadin, ST.,MT.',
                    'assets/images/pakmuhtadin.jpg',
                    300.0,
                    180.0,
                    150.0,
                    150.0)),

            SizedBox(height: 10),
            //Dosen pak Zaini
            TextButton(
                onPressed: dosenpakzainibuttonpressed,
                child: guicontextimg('Ahmad Zaini ST.,Msc.',
                    'assets/images/pakzaini.jpg', 300.0, 180.0, 150.0, 150.0)),
          ],
        ),
      ),
    );
  }
}
