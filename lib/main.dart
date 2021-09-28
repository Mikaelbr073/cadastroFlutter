// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

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
                    //controller: txtnome,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Nome'),
                  )),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: TextField(
                    //controller: txtidade,
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
                  onPressed: () {},
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
