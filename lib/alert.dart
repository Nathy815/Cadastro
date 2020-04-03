import 'package:flutter/material.dart';
import 'main.dart';

class Alert extends StatelessWidget {

  final String _title;
  final String _message;

  Alert(this._title, this._message);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('$_title'),
      content: Text('$_message'),
      actions: <Widget>[
        FlatButton(
          child: new Text("Fechar"),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
          },
        )
      ],
    );
  }
}