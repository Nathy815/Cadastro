import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'formulario.dart';
import 'contato.dart';

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de usuário"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.contact_mail),
            tooltip: "Contato",
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Contato()));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              child: const ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('img/perfil.jpg'),
                ),
                title: Text("Nathália Lopes"),
                subtitle: Text("Descrição...") 
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Formulario()));
        },
      ),
    );
  }
}