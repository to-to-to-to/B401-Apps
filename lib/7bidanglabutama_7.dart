import 'package:flutter/material.dart';
import '10bidangweb_10.dart';
import '25tabelfinalproject_25.dart';
import '8bidangiot_8.dart';
import '9bidangapps_9.dart';
import 'functionstuff.dart';

//4th page

class HalamanTujuh extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanTujuh();
}

class KondisiHalamanTujuh extends State<HalamanTujuh> {
  //homebarBack
  void homebuttonpressed() {
    Navigator.pop(context);
  }

  //iot
  void iotbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanDelapan()));
  }

  //apps
  void appsbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanSembilan()));
  }

  //web
  void webbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanSepuluh()));
  }

  //TA
  void tugasakhirbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanDualima()));
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
          "Bidang Lab",
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
      body: SingleChildScrollView(
        child: new Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              //Rich Textbox
              guitextwrp(
                  'Bidang Lab di B401 terdiri dari 3 bidang, yaitu IOT, Apps, dan Web',
                  200.0,
                  100),

              //padding
              SizedBox(height: 10),

              //IOT
              TextButton(
                  onPressed: iotbuttonpressed,
                  child: guicontextimg('Internet of Things',
                      'assets/images/iot.png', 300.0, 180.0, 150.0, 150.0)),

              SizedBox(height: 10),
              //Apps
              TextButton(
                  onPressed: appsbuttonpressed,
                  child: guicontextimg('Apps Dev', 'assets/images/apps.png',
                      300.0, 180.0, 150.0, 150.0)),

              SizedBox(height: 10),
              //Web
              TextButton(
                  onPressed: webbuttonpressed,
                  child: guicontextimg('Web Dev', 'assets/images/web.png',
                      300.0, 180.0, 150.0, 150.0)),

              SizedBox(height: 10),

              //TA
              TextButton(
                  onPressed: tugasakhirbuttonpressed,
                  child: guicontextimg(
                      'Final Project',
                      'assets/images/tugasakhir.png',
                      300.0,
                      180.0,
                      100.0,
                      150.0)),
            ],
          ),
        ),
      ),
    );
  }
}
