import 'package:b401_ketiga/3homepage_3.dart';
import 'package:flutter/material.dart';
import 'functionstuff.dart';

//2nd page

class HalamanDua extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => KondisiHalamanDua();
}

class KondisiHalamanDua extends State<HalamanDua> {
  //TopbarBack
  void backbuttonpressed() {
    Navigator.pop(context);
  }

  //signup button
  void signupbuttonpressed() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HalamanTiga()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App bar
      appBar: new AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: backbuttonpressed,
              color: Colors.red[900]),
          title: new Center(
              child: new Text("Sign In",
                  style: TextStyle(color: Colors.red[900])))),

      //body!
      body: new Center(
        child: new Column(
          children: [
            //Logo gede
            Image.asset('assets/images/logob401.png', width: 150, height: 150),
            SizedBox(height: 10),
            //TextBoxs

            //Username
            guiFaketextbox('Email...'),
            SizedBox(height: 10),
            //Password
            guiFaketextbox('Password...'),

            //TombolSign in
            TextButton(
                onPressed: signupbuttonpressed, child: guibuttonn('GO!')),

            //Gamabar lagi
            Expanded(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/images/gambaraslab.png',
                        height: 272)))
          ],
        ),
      ),
    );
  }
}
