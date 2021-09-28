// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'dart:js';

import 'package:cadastro/pagina2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  TextEditingController txtnome = TextEditingController();
  TextEditingController txtidade = TextEditingController();
  TextEditingController txtlocalizacao = TextEditingController();

  void salvar() {

    String nome;
    String idade;
    String localizacao;

    setState(() {
    
    
    
      localizacao = localizacao.text;
      nome = txtnome.text;
      idade = txtidade.text;
      

      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => pagina2(nome, idade localizacao)));
    
    
    
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Cadastro do avicultor',
          ),
        ),
        backgroundColor: Colors.orangeAccent,
        body: Center(
          child: Column(
            children: [
              Text('Bem-Vindo',
                  style: TextStyle(color: Colors.blue, fontSize: 30)),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: txtnome,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Nome'),
                  )),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    controller: txtidade,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Idade'),
                  )),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    //controller: txtlocalizacao,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Localização'),
                  )),
              Padding(
                padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                  onPressed: salvar,
                  child: Text('Cadastrar'),
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
