import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blueGrey,
          ),
          body: Askme(),
        ),
      ),
    );

class Askme extends StatefulWidget {
  @override
  _AskmeState createState() => _AskmeState();
}

class _AskmeState extends State<Askme> {
  var imageNum = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            imageNum = Random().nextInt(5) + 1;
          });
        },
        child: Image(
          image: AssetImage("images/ball$imageNum.png"),
        ),
      ),
    );
  }
}
