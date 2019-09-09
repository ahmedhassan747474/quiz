import 'package:flutter/material.dart';

class Anwser extends StatelessWidget {
  final Function f;

 // final String anwser;
  final String anwserText;
  Anwser(this.f, this.anwserText);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: f,
      child: Text(anwserText),
    );
  }
}
