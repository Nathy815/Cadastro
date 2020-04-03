import 'package:flutter/material.dart';
import 'alert.dart';

class Contato extends StatelessWidget {
  
  final _titulo = TextEditingController();
  final _mensagem = TextEditingController();
  
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato")
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                controller: _titulo,
                style: TextStyle(
                  fontSize: 24.0 
                ),
                decoration: InputDecoration(
                  labelText: "Título:",
                  //icon: Icon(Icons.account_box)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                controller: _mensagem,
                style: TextStyle(
                  fontSize: 24.0,
                ),
                decoration: InputDecoration(
                  labelText: "Mensagem:",
                  //icon: Icon(Icons.phone)
                ),
                keyboardType: TextInputType.multiline,
              ),
            ),
            RaisedButton(
              child: Text("Enviar",
                style: TextStyle(color: Colors.white, fontSize: 30.0)
              ),
              color: Colors.green,
              highlightColor: Colors.yellow[300],
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Alert("Sucesso", "Mensagem enviada!");
                  }
                );
              },
            )
          ],
        )
      )
    );
  }
}