import 'dart:math';

import 'package:flutter/material.dart';
import 'package:heads_or_tails/heads_or_tails.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _exibirResultado() {
    int result = Random().nextInt(2);

    List<String> options = ["cara", "coroa"];

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HeadsOrTails(result: options[result])));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("assets/images/logo.png"),
            GestureDetector(
              child: Image.asset("assets/images/botao_jogar.png"),
              onTap: _exibirResultado,
            ),
          ],
        ),
      ),
    );
  }
}
