import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vidente_app/models/previsao_hora.dart';
import 'package:vidente_app/services/previsao_services.dart';
import 'package:vidente_app/widgets/proximas_temperaturas.dart';
import 'package:vidente_app/widgets/resumo.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<PrevisaoHora> ultimasPrevisoes;

  @override
  void initState() {
    super.initState();
    PrevisaoServices service = PrevisaoServices();
    //pparei aqui//
    ultimasPrevisoes = service.recuperarUltimasPrevisoes();
  }

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
            Padding(padding: EdgeInsets.all(10)),
            ProximasTemperaturas(previsoes: ultimasPrevisoes),
          ],
        ),
      ),
    );
  }
}
