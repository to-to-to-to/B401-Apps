import 'package:b401_ketiga/5katalogdosen_5.dart';
import 'package:b401_ketiga/6katalogaslab_6.dart';
import 'package:flutter/material.dart';
import 'functionstuff.dart';

//4th page

class HalamanEmpat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanEmpat();
}

class KondisiHalamanEmpat extends State<HalamanEmpat> {
  //homebarBack
  void homebuttonpressed() {
    Navigator.pop(context);
  }

  //dosen
  void dosenbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanLima()));
  }

  //aslab
  void asblabbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanEnam()));
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
          "Stakeholder",
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
            guitextwrp(
                'Stakeholder Laboraturium B401 terdiri atas Dosen dan Asisten',
                200.0,
                100),

            //padding
            SizedBox(height: 20),

            //Kepala Lab
            TextButton(
                onPressed: dosenbuttonpressed,
                child: guicontextimg('Dosen', 'assets/images/pakmuhtadin.jpg',
                    300.0, 200.0, 150.0, 150.0)),

            SizedBox(height: 20),
            //Aslab
            TextButton(
                onPressed: asblabbuttonpressed,
                child: guicontextimg('Asisten', 'assets/images/mul.jpg', 300.0,
                    200.0, 150.0, 150.0)),

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
