import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  home: Scaffold(
    backgroundColor: Colors.blue[200],
    appBar: AppBar(
      backgroundColor: Colors.blue[800],
      title: Text('Ask Me Anything',
      style: TextStyle(
      color: Colors.white,
      ),
      ),
    ),
    body: BallPage(

    ),
  ),
  )
  );
}
class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(

            child: TextButton(
                onPressed: () {
                  setState(() {
                    ball = Random().nextInt(5) +1 ;
                  });
                },
                child: Image.asset('images/ball$ball.png')),),
        ],
      ),
    );
  }
}

