import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blueAccent,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int lno = 1;
  int rno = 1;
  void change(){
    setState(() {
      lno = Random().nextInt(6) + 1;
      rno = Random().nextInt(6) + 1;
    });
  }
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$lno.png'),
            onPressed: () {
              print('left Button');
              change();
            },
          )),
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$rno.png'),
            onPressed: () {
              change();
              print('Right Button');
            },
          )),
          FloatingActionButton(onPressed: () {
            setState(() {
              lno = Random().nextInt(6) + 1;
              rno = Random().nextInt(6) + 1;
            },
            );
          })
        ],
      ),
    );
  }
}
