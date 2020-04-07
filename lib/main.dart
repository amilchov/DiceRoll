import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          actions: <Widget>[],
          backgroundColor: Colors.purple,
          title: Center(
            child: Text('DiceRoll'),
          ),
        ),
        body: DicePage(),
      ),
    ));

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}


class _DicePageState extends State<DicePage> {
  var _imageDiceNumberLeft = 1;
  var _imageDiceNumberRight = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _imageDiceNumberLeft = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$_imageDiceNumberLeft.png'))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      _imageDiceNumberRight = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$_imageDiceNumberRight.png')))
        ],
      ),
    );
  }
}

