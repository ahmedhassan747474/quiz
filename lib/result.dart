import 'package:flutter/material.dart';

class result extends StatelessWidget {
   int Score ;
   Function f;

  result(this.Score,this.f);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Center(
          child: Text("You done it  $Score"),
        ),
        RaisedButton(onPressed: f,
        child: Text('Reset'),
        )
      ],
    );
  }
}
