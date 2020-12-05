import 'package:flutter/material.dart';

class HalamanSepuluh extends StatelessWidget {
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
          "Web",
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
                        Text('Web Development',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 23)),
                        SizedBox(height: 19),
                        Text(
                            'Merupakan sebuah teknologi pengembangan oleh sebuah web untuk world wide dan dunia maya. Proses web biasanya mengacu pada design bangunan web tanpa mengubah konten autentik didalamnya. Proses web development biasanya memakan waktu seminggu hingga sebulan tergantung kesulitannya.',
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
