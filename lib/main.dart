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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Click on the dices to change them',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    leftDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/Dice$leftDice.png'),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    rightDice = Random().nextInt(6) + 1;
                  });
                },
                child: Image(
                  image: AssetImage('images/Dice$rightDice.png'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
