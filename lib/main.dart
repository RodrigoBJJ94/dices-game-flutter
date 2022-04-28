import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal.shade700,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Dices Game'),
          backgroundColor: Colors.teal.shade900,
        ),
        body: const Dices(),
      ),
    ),
  );
}

class Dices extends StatefulWidget {
  const Dices({Key? key}) : super(key: key);
  @override
  DicesState createState() => DicesState();
}

class DicesState extends State<Dices> {
  var leftDice = 1;
  var rightDice = 1;

  void changeDices() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDices();
              },
              child: Image.asset('images/Dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDices();
              },
              child: Image.asset('images/Dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
