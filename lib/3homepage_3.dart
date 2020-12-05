import 'package:b401_ketiga/4stakeholderutama_4.dart';
import 'package:flutter/material.dart';
import '11praktikum utama_11.dart';
import '7bidanglabutama_7.dart';
import 'functionstuff.dart';

//3rd page

class HalamanTiga extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanTiga();
}

class KondisiHalamanTiga extends State<HalamanTiga> {
  //Stakeholder
  void stackholderbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanEmpat()));
  }

  //Bidlab
  void bidlabbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanTujuh()));
  }

  //Praktikum
  void praktikumbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanSebelas()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: new AppBar(
        backgroundColor: Colors.white,
        leading: new Icon(
          Icons.settings,
          color: Colors.red[900],
        ),
        title: new Center(
            child: new Text(
          "Pilih Layanan",
          style: TextStyle(color: Colors.red[900]),
        )),
        actions: <Widget>[
          new Icon(
            Icons.exit_to_app,
            color: Colors.red[900],
          )
        ],
      ),

      //body!
      body: new Center(
        child: new Column(
          children: [
            //textboxs
            SizedBox(height: 30),

            //stakeholder
            TextButton(
                onPressed: stackholderbuttonpressed,
                child: guicontextimg(
                    'StakeHolder',
                    'assets/images/stakeholder.png',
                    300.0, //object width
                    140.0, //object Hight
                    100.0, //img width...
                    100.0)),

            //bidang lab
            TextButton(
                onPressed: bidlabbuttonpressed,
                child: guicontextimg(
                    'Bidang Lab &  FP',
                    'assets/images/bidanglab.png',
                    300.0, //object width
                    140.0, //object Hight
                    100.0, //img width...
                    100.0)),

            //praktikum rdig
            TextButton(
                onPressed: praktikumbuttonpressed,
                child: guicontextimg(
                    'Praktikum Rdig',
                    'assets/images/praktikurdig.png',
                    300.0, //object width
                    140.0, //object Hight
                    100.0, //img width...
                    100.0)),

            //gambar bawah
            Expanded(
                child: Align(
              alignment: Alignment.bottomRight,
              child: Image.asset('assets/images/gambarrobot.png', height: 272),
            ))
          ],
        ),
      ),
    );
  }
}
