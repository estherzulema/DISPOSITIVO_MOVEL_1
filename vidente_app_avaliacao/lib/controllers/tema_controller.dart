import 'package:flutter/material.dart';

class TemaController extends ChangeNotifier {
  bool usarTemaEscuro;
  static TemaController instancia = new TemaController();

  TemaController() {
    usarTemaEscuro = false;
  }

  trocarTema() {
    usarTemaEscuro = !usarTemaEscuro;
    notifyListeners();
  }
}

class InputController {
  String txtInput;
  var nC;
  var cC;
  static InputController instance = new InputController();

  InputController() {
    txtInput = '';
    nC = '';
    cC = '';
  }
}
