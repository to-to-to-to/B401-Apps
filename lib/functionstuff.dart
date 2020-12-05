import 'dart:math';

import 'package:flutter/material.dart';

//Draw GUI Button
Container guibutton(String btntext) {
  return Container(
    height: 100.0,
    width: 300.0,
    color: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: new Center(
        child: new Text(
          btntext,
          style: TextStyle(color: Colors.white, fontSize: 22),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

//Draw Gui Button 2
Container guibuttonn(String btntext) {
  return Container(
    height: 100.0,
    width: 150.0,
    color: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.yellowAccent[700],
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: new Center(
        child: new Text(
          btntext,
          style: TextStyle(color: Colors.black, fontSize: 22),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

//Draw Gui Button 3
Container guibuttonn1(String btntext) {
  return Container(
    height: 100.0,
    width: 300.0,
    color: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.yellowAccent[700],
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: new Center(
        child: new Text(
          btntext,
          style: TextStyle(color: Colors.black, fontSize: 22),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

//Draw GUI button with image
Container guicontextimg(String objText, String obtImgPath, double sizewidth,
    double sizehight, double sizeimgwidth, double sizeimghight) {
  return Container(
    height: sizehight,
    width: sizewidth,
    color: Colors.transparent,
    child: Container(
        decoration: BoxDecoration(
            color: Colors.red[900],
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              obtImgPath,
              height: sizeimghight,
              width: sizeimghight,
            ),
            SizedBox(width: 20),
            Flexible(
                child: Text(objText,
                    style: TextStyle(color: Colors.white, fontSize: 22),
                    textAlign: TextAlign.center))
          ],
        )),
  );
}

//Draw GUI Textbox
Container guiFaketextbox(String txttext) {
  return Container(
    height: 100.0,
    width: 300.0,
    color: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: new Center(
        child: new Text(
          txttext,
          style: TextStyle(color: Colors.white, fontSize: 22),
          textAlign: TextAlign.start,
        ),
      ),
    ),
  );
}

//Gui String wrapper
//Draw GUI button with image
Container guitextwrp(String objText, double sizewidth, double sizehight) {
  return Container(
    height: sizehight,
    width: sizewidth,
    color: Colors.transparent,
    child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Flexible(
            child: Text(objText,
                style: TextStyle(color: Colors.red[900], fontSize: 20),
                textAlign: TextAlign.center))),
  );
}

//Gui String wrapper
//Draw GUI button with image
Container guitextwrpp(String objText, double sizewidth, double sizehight) {
  return Container(
    height: sizehight,
    width: sizewidth,
    color: Colors.transparent,
    child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Flexible(
            child: Text(objText,
                style: TextStyle(color: Colors.red[900], fontSize: 16),
                textAlign: TextAlign.center))),
  );
}

Container guiunder(String btntext) {
  return Container(
    height: 100.0,
    width: 300.0,
    color: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: new Center(
        child: new Text(
          btntext,
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              decoration: TextDecoration.underline),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
}

//button cek jadwal
Container guibuttondoubletext(String btntextup, String btntextdown) {
  return Container(
    height: 100.0,
    width: 300.0,
    color: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
          color: Colors.red[900],
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: new Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Text up
            Text(
              btntextup,
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            //Text down
            Text(
              btntextdown,
              style: TextStyle(color: Colors.white, fontSize: 22),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ),
  );
}

// ignore: non_constant_identifier_names
List<String> RngNama(String dateformat) {
  var namelistawal = [
    "Pele",
    "Diego",
    "Lionel",
    "Cristiano",
    "Johan",
    "Zinedine",
    "Franz",
    "Paolo",
    "Gerd",
    "Gianluigi"
  ];
  var namelistakhir = [
    "Pele",
    "Maradona",
    "Messi",
    "Ronaldo",
    "Cruyff",
    "Zidane",
    "Beckenbauer",
    "Maldini",
    "Muller",
    "Buffon"
  ];
  int rgnseed = int.parse(dateformat.replaceAll("-", ""));
  Random rng = Random(rgnseed);

  List<String> namalist = List<String>(4);

  for (int i = 0; i < 4; i++) {
    String namadepan = namelistawal[rng.nextInt(10)];
    String namaakhir = namelistakhir[rng.nextInt(10)];

    namalist[i] = (namadepan + " " + namaakhir);
  }

  return namalist;
}
