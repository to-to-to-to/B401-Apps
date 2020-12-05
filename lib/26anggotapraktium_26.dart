import 'package:flutter/material.dart';

class Hal26Info extends StatelessWidget {
  final String tangggal;

  // In the constructor, require a Todo.
  Hal26Info({Key key, @required this.tangggal, @required this.nama})
      : super(key: key);

  //RNG name builder
  final List<String> nama;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        //Text
        Text(tangggal),

        Text(nama[0]),

        Text(nama[1]),

        Text(nama[2]),
      ],
    ));
  }
}
