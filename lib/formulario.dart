import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'alert.dart';

class Formulario extends StatelessWidget {

  final _nome = TextEditingController();
  final _phone = TextEditingController();
  final _sexo = TextEditingController();
  final _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro")),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                controller: _nome,
                style: TextStyle(
                  fontSize: 24.0 
                ),
                decoration: InputDecoration(
                  labelText: "Nome:",
                  icon: Icon(Icons.account_box)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                controller: _phone,
                style: TextStyle(
                  fontSize: 24.0 
                ),
                decoration: InputDecoration(
                  labelText: "Telefone:",
                  icon: Icon(Icons.phone)
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                controller: _sexo,
                style: TextStyle(
                  fontSize: 24.0 
                ),
                decoration: InputDecoration(
                  labelText: "Sexo:",
                  icon: Icon(Icons.portrait)
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                controller: _email,
                style: TextStyle(
                  fontSize: 24.0 
                ),
                decoration: InputDecoration(
                  labelText: "Email:",
                  icon: Icon(Icons.restaurant_menu)
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),
            RaisedButton(
              child: Text("Cadastrar",
                style: TextStyle(color: Colors.white, fontSize: 30.0)
              ),
              color: Colors.green,
              highlightColor: Colors.yellow[300],
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Alert("Sucesso", "Usuário cadastrado!");
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