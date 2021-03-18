import 'package:flutter/material.dart';
import 'package:flutter_minesweeper/components/campo_widget.dart';
import 'package:flutter_minesweeper/components/resultado_widget.dart';
import 'package:flutter_minesweeper/models/campo.dart';
import 'package:flutter_minesweeper/models/explosao_exception.dart';

class CampoMinadoApp extends StatelessWidget {
  void _reiniciar() {}
  void _abrir(Campo campo) {}
  void _alternarMarcacao(Campo campo) {}

  @override
  Widget build(BuildContext context) {
    Campo campo = Campo(linha: 0, coluna: 0);
    try {
      campo.minar();
      campo.abrir();
    } on ExplosaoException {}
    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: true,
          onReiniciar: _reiniciar,
        ),
        body: Container(
          child: CampoWidget(
            campo: campo,
            onAbrir: _abrir,
            onAlternarMarcacao: _alternarMarcacao,
          ),
        ),
      ),
    );
  }
}
