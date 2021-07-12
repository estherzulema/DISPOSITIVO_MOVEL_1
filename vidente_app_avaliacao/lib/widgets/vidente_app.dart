import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vidente_app_avaliacao/controllers/tema_controller.dart';
import 'package:vidente_app_avaliacao/services/previs%C3%A3o_cidade.dart';

class VidenteApp extends StatelessWidget {
  final String cidade;

  const VidenteApp({Key key, this.cidade}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: TemaController.instancia,
      builder: (context, child) {
        return MaterialApp(
          title: 'Vidente',
          theme: TemaController.instancia.usarTemaEscuro
              ? ThemeData.dark()
              : ThemeData.light(),
          debugShowCheckedModeBanner: false,
          home: TelaCidade(),
        );
      },
    );
  }
}
