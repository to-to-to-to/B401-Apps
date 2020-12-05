import 'package:flutter/material.dart';
import 'functionstuff.dart';
import 'package:localstorage/localstorage.dart';
import 'package:shared_preferences/shared_preferences.dart';

//5th page

class HalamanTigabelas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanTigabelas();
}

class KondisiHalamanTigabelas extends State<HalamanTigabelas> {
  //Local storage Variable
  final LocalStorage storage = new LocalStorage('DatePraktikum.json');

  //List for datetime
  var datelist = [
    new DateTime.now(),
    new DateTime.now(),
    new DateTime.now(),
    new DateTime.now()
  ];

  void setdatelist() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var strdatelist = prefs.getStringList('TanggalPraktikum');
    if (strdatelist == null) {
      return;
    }

    for (int i = 0; i < datelist.length; i++) {
      datelist[i] = DateTime.parse(strdatelist[i]);
    }
  }

  void writedatelist() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    var strdatelist = [
      datelist[0].toString(),
      datelist[1].toString(),
      datelist[2].toString(),
      datelist[3].toString(),
    ];

    prefs.setStringList('TanggalPraktikum', strdatelist);
  }

  //Satrtup Run
  @override
  void initState() {
    setdatelist();
    super.initState();
  }

  Future<void> _selectDate(BuildContext context, int dateindex) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: datelist[dateindex],
        firstDate: DateTime(2020),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        datelist[dateindex] = picked;
      });
  }

  //TopbarBack
  void backbuttonpressed() {
    Navigator.pop(context);
  }

  //p1
  void pe1buttonpressed() {
    _selectDate(context, 0);
  }

  //p2
  void pe2buttonpressed() {
    _selectDate(context, 1);
  }

  //p3
  void pe3buttonpressed() {
    _selectDate(context, 2);
  }

  //p4
  void pe4buttonpressed() {
    _selectDate(context, 3);
  }

  //submit
  void submitbuttonpressed() {
    //Submit logic goes here!
    writedatelist();
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
            "Registrasi",
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
                    'Silahkan Registrasi Tanggal Praktikum di Kolom yang telah disediakan.',
                    200.0,
                    100.0),

                //p1
                TextButton(
                    onPressed: pe1buttonpressed,
                    child: guibutton('Tanggal P1')),
                SizedBox(height: 10),

                //p2
                TextButton(
                    onPressed: pe2buttonpressed,
                    child: guibutton('Tanggal P2')),
                SizedBox(height: 10),
                //p3
                TextButton(
                    onPressed: pe3buttonpressed,
                    child: guibutton('Tanggal P3')),
                SizedBox(height: 10),
                //p4
                TextButton(
                    onPressed: pe4buttonpressed,
                    child: guibutton('Tanggal P4')),
                SizedBox(height: 10),
                //submit
                TextButton(
                    onPressed: submitbuttonpressed,
                    child: guibuttonn('Submit!')),
              ],
            ),
          ),
        ));
  }
}
