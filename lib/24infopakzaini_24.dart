import 'package:flutter/material.dart';

class HalamanDuaempat extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanDuaempat();
}

class KondisiHalamanDuaempat extends State<HalamanDuaempat> {
  //TopbarBack
  void backbuttonpressed() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: backbuttonpressed,
            color: Colors.red[900]),
        title: new Center(
            child: new Text(
          "Pak Zaini",
          style: TextStyle(color: Colors.red[900]),
        )),
      ),
      body: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 650.0,
              width: 350.0,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red[900],
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: new Center(
                  child: new Padding(
                    padding: EdgeInsets.all(25),
                    child: new Column(
                      children: [
                        Image.asset('assets/images/pakzaini.jpg'),
                        SizedBox(height: 30),
                        Text('Ahmad Zaini ST.,Msc.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            )),
                        SizedBox(height: 10),
                        Text('197504192002121003',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            )),
                        SizedBox(height: 10),
                        Text('Dosen Laboraturium',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            )),
                        SizedBox(height: 15),
                        Image.asset(
                          'assets/images/logob401.png',
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
