import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Ask Me Any Question"),
        centerTitle: true,
      ),
      body: const Magic8ball(),
    ),
  ));
}

class Magic8ball extends StatefulWidget {
  const Magic8ball({Key? key}) : super(key: key);

  @override
  State<Magic8ball> createState() => _Magic8ballState();
}

class _Magic8ballState extends State<Magic8ball> {
  int magicNumber = 1;

  void magicAnswer() {
    setState(() {
      magicNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextButton(
            child: Image.asset("images/ball$magicNumber.png"),
            onPressed: () {
              magicAnswer();
            },
          ),
        ),
      ),
    );
  }
}
