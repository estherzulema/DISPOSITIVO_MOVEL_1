import 'package:avaliacao_app/widgets/foto.dart';
import 'package:flutter/material.dart';

class Fotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        height: MediaQuery.of(context).size.height / 4 - 4,
        width: MediaQuery.of(context).size.width / 3 - 3,
        child: Foto(),
      ),
    );
  }
}
