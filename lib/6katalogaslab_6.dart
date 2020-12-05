import 'package:flutter/material.dart';
import '15infomul_15.dart';
import '16infofradip_16.dart';
import '17infoagung_17.dart';
import '18infompu_18.dart';
import '19infofiqar_19.dart';
import '20infonia_20.dart';
import '21infopujik_21.dart';
import 'functionstuff.dart';

//5th page

class HalamanEnam extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanEnam();
}

class KondisiHalamanEnam extends State<HalamanEnam> {
  //TopbarBack
  void backbuttonpressed() {
    Navigator.pop(context);
  }

  //aslab mul
  void mulbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanLimabelas()));
  }

  //aslab fradip
  void fradipbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanEnambelas()));
  }

  //aslab agung
  void agungbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanTujuhbelas()));
  }

  //aslab mpu
  void mpubuttonpressed() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => HalamanDelapanbelas()));
  }

  //aslab fiqar
  void fiqarbuttonpressed() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => HalamanSembilanbelas()));
  }

  //aslab nia
  void niabuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanDuapuluh()));
  }

  //aslab pujik
  void pujikbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanDuasatu()));
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
            "Asisten Lab",
            style: TextStyle(color: Colors.red[900]),
          )),
        ),

        //body
        body: SingleChildScrollView(
          child: new Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                //Rich Textbox
                guitextwrpp(
                    'Asisten Laboraturium B401 Komputasi Multimedia terdiri dari 7 orang.',
                    200.0,
                    100.0),

                //aslab mul
                TextButton(
                    onPressed: mulbuttonpressed,
                    child: guicontextimg('Ahmad Zakiy Mulyanto',
                        'assets/images/mul.jpg', 300.0, 180.0, 150.0, 150.0)),

                SizedBox(height: 10),
                //aslab fradip
                TextButton(
                    onPressed: fradipbuttonpressed,
                    child: guicontextimg(
                        'Fradipta Alqaiyum',
                        'assets/images/fradip.jpg',
                        300.0,
                        180.0,
                        150.0,
                        150.0)),

                SizedBox(height: 10),
                //aslab agung
                TextButton(
                    onPressed: agungbuttonpressed,
                    child: guicontextimg('Agung Wicaksono',
                        'assets/images/agung.jpg', 300.0, 180.0, 150.0, 150.0)),
                //aslab mpu
                TextButton(
                    onPressed: mpubuttonpressed,
                    child: guicontextimg('Mpu Hambyah Syah B A',
                        'assets/images/mpu.jpg', 300.0, 180.0, 150.0, 150.0)),
                //aslab fikar
                TextButton(
                    onPressed: fiqarbuttonpressed,
                    child: guicontextimg('M Dzulfiqar',
                        'assets/images/fikar.jpg', 300.0, 180.0, 150.0, 150.0)),
                //aslab nia
                TextButton(
                    onPressed: niabuttonpressed,
                    child: guicontextimg('Nia Angellina',
                        'assets/images/nia.jpg', 300.0, 180.0, 150.0, 150.0)),
                //aslab pujik
                TextButton(
                    onPressed: pujikbuttonpressed,
                    child: guicontextimg('Syaidatul Fauziah',
                        'assets/images/pujik.jpg', 300.0, 180.0, 150.0, 150.0)),
              ],
            ),
          ),
        ));
  }
}
