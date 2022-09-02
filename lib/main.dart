import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: Text('Dice Roll'),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    )
  );
}
class Dicepage extends StatefulWidget {
  const Dicepage({Key? key}) : super(key: key);

  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int LeftDiceNum =  1;
  int rightDiceNum =  1;
  void changeDiceFace() {
    setState((){
      LeftDiceNum = Random().nextInt(6) + 1;
      rightDiceNum = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children:<Widget> [
          Expanded(
            child: TextButton(
              onPressed: (){
                changeDiceFace();
                },
              child: Image.asset(
                  'images/dice$LeftDiceNum.png'
              ),
            ),
          ),
          Expanded(

            child: TextButton(
              onPressed: (){
                changeDiceFace();
              },
              child: Image.asset(
                  'images/dice$rightDiceNum.png'
              ),
            ),
          ),
        ],
      ),

    );
  }
}



