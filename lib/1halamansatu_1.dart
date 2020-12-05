import 'package:b401_ketiga/2halamansignin_2.dart';
import 'package:b401_ketiga/3homepage_3.dart';
import 'functionstuff.dart';
import 'package:flutter/material.dart';

//1st page

class HalamanSatu extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanSatu();
}

class KondisiHalamanSatu extends State<HalamanSatu> {
  //Sign UP
  void signupbuttonpressed() {}

  //Sign IN
  void signinbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanDua()));
  }

  //Guest
  void guestbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanTiga()));
  }

  //GUI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //Appbar
        appBar: new AppBar(
          backgroundColor: Colors.white,
          leading: new Icon(
            Icons.settings,
            color: Colors.red[900],
          ),
          title: new Center(
              child: new Text("B401 Apps",
                  style: TextStyle(color: Colors.red[900]))),
          actions: <Widget>[
            new Icon(
              Icons.exit_to_app,
              color: Colors.red[900],
            )
          ],
        ),

        //Body!
        body: new Center(
            child: new Column(
          children: [
            //Gambar 1
            Image.asset('assets/images/gambarpertama.png'),

            //tombol tombol

            //Tombol SignUP
            TextButton(
                onPressed: signupbuttonpressed, child: guibutton('Sign Up')),

            //Tombol SignIN
            TextButton(
                onPressed: signinbuttonpressed, child: guibutton('Sign In')),

            //Tombol Guest
            TextButton(
                onPressed: guestbuttonpressed,
                child: guibuttonn1('Continue as Guest')),

            //gambar 3 bawah
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/logotekkom.png',
                    width: 100, height: 100),
                Image.asset('assets/images/logob401.png',
                    width: 100, height: 100),
                Image.asset('assets/images/logoits.png',
                    width: 100, height: 100)
              ],
            )
          ],
        )));
  }
}
