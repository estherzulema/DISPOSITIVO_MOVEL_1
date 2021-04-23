import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vidente_app/widgets/resumo.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vidente'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Resumo(
              cidade: 'Aquidauana',
              temperaturaAtual: 33,
              temperaturaMaxima: 39,
              temperaturaMinima: 27,
              descricao: 'Ensolarado',
              numeroIcone: 1,
            ),
          ],
        ),
      ),
    );
  }
}
