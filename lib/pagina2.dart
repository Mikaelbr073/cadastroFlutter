// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';

class pagina2 extends StatefulWidget {
  String nome;
  String idade;
  String localizacao;

  pagina2(this.nome, this.idade, this.localizacao);

  @override
  _pagina2State createState() => _pagina2State();
}

class _pagina2State extends State<pagina2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Confirmação'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
            'Nome:${widget.nome}, idade${widget.idade} localizacao${widget.localizacao}'),
      ),
    );
  }
}
