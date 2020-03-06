import 'package:flutter/material.dart';

class HeadsOrTails extends StatelessWidget {
  final String result;

  HeadsOrTails({@required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("assets/images/moeda_$result.png"),
            GestureDetector(
              child: Image.asset("assets/images/botao_voltar.png"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
