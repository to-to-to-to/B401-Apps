import 'package:b401_ketiga/26anggotapraktium_26.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'functionstuff.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HalamanEmpatbelas extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanEmpatbelas();
}

class KondisiHalamanEmpatbelas extends State<HalamanEmpatbelas> {
  //TopbarBack
  void backbuttonpressed() {
    Navigator.pop(context);
  }

  //List for datetime
  var datelist = [
    "Date not set!",
    "Date not set!",
    "Date not set!",
    "Date not set!"
  ];

  //load data from list!
  void setdatelist() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    var strdatelist = prefs.getStringList('TanggalPraktikum');
    if (strdatelist == null) {
      return;
    }

    setState(() {
      for (int i = 0; i < datelist.length; i++) {
        DateTime datetemp = DateTime.parse(strdatelist[i]);
        datelist[i] = DateFormat('dd-MM-yyyy').format(datetemp);
      }
    });
  }

  void buttonPressed(String tgl) {
    var namelst = RngNama(tgl);
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Hal26Info(tangggal: tgl, nama: namelst)));
  }

  //Satrtup Run
  @override
  void initState() {
    setdatelist();
    super.initState();
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
            "Cek Jadwal",
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
                    'Berikut adalah jadwal praktikum anda', 200.0, 100.0),

                //p1
                TextButton(
                    onPressed: () {
                      buttonPressed(datelist[0]);
                    },
                    child: guibuttondoubletext('P1', datelist[0])),
                SizedBox(height: 10),

                //p2
                TextButton(
                    onPressed: () {
                      buttonPressed(datelist[1]);
                    },
                    child: guibuttondoubletext('P2', datelist[1])),
                SizedBox(height: 10),
                //p3
                TextButton(
                    onPressed: () {
                      buttonPressed(datelist[2]);
                    },
                    child: guibuttondoubletext('P3', datelist[2])),
                SizedBox(height: 10),

                //p4
                TextButton(
                    onPressed: () {
                      buttonPressed(datelist[3]);
                    },
                    child: guibuttondoubletext('P4', datelist[3])),
                SizedBox(height: 10),
              ],
            ),
          ),
        ));
  }
}
