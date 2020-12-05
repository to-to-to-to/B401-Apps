import 'package:flutter/material.dart';

class HalamanDuadua extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanDuadua();
}

class KondisiHalamanDuadua extends State<HalamanDuadua> {
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
          "Prof Herry",
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
                        Image.asset('assets/images/Pakherrybaru.jpg'),
                        SizedBox(height: 30),
                        Text('Prof.Dr.Ir. Mauridhi Herry Purnomo, M.Eng.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            )),
                        SizedBox(height: 10),
                        Text('195809161986011001',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            )),
                        SizedBox(height: 10),
                        Text('Kepala Laboraturium',
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
