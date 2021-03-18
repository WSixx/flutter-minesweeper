import 'package:flutter/material.dart';
import 'package:flutter_minesweeper/components/resultado_widget.dart';
import 'package:flutter_minesweeper/components/tabuleiro_widget.dart';
import 'package:flutter_minesweeper/models/campo.dart';
import 'package:flutter_minesweeper/models/tabuleiro.dart';

class CampoMinadoApp extends StatefulWidget {
  @override
  _CampoMinadoAppState createState() => _CampoMinadoAppState();
}

class _CampoMinadoAppState extends State<CampoMinadoApp> {
  bool _venceu;
  Tabuleiro _tabuleiro = Tabuleiro(linhas: 12, colunas: 12, qtdBombas: 3);
  void _reiniciar() {}

  void _abrir(Campo campo) {}

  void _alternarMarcacao(Campo campo) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: ResultadoWidget(
          venceu: _venceu,
          onReiniciar: _reiniciar,
        ),
        body: Container(
          child: TabuleiroWidget(
            onAbrir: _abrir,
            onAlternarMarcacao: _alternarMarcacao,
            tabuleiro: _tabuleiro,
          ),
        ),
      ),
    );
  }
}
