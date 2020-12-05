import 'package:flutter/material.dart';

class HalamanDelapan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        leading: new Icon(
          Icons.arrow_back,
          color: Colors.red[900],
        ),
        title: new Center(
            child: new Text(
          "IOT",
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
                        Text('Internet Of Things (IOT)',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 23)),
                        SizedBox(height: 19),
                        Text(
                            'Adalah suatu teknologi suatu konsep dimana objek tertentu mempunyai kemampuan untuk mentransfer data lewat jaringan tanpa perlu melakukan adanya interaksi dari manusia ke manusia ataupun manusia ke perangkat komputer. Lab B401 telah menyelesaikan beberapa proyek yang berkaitan dengan IOT Development.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ))
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
