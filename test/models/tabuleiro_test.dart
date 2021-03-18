import 'package:flutter_minesweeper/models/tabuleiro.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  test('Ganhar Jogo', () {
    Tabuleiro tabuleiro = Tabuleiro(linhas: 2, colunas: 2, qtdBombas: 0);

    tabuleiro.campos[0].minar();
    tabuleiro.campos[3].minar();

    //ganhar jogo
    tabuleiro.campos[0].alternarMarccao();
    tabuleiro.campos[1].abrir();
    tabuleiro.campos[2].abrir();
    tabuleiro.campos[3].alternarMarccao();
    expect(tabuleiro.resolvido, isTrue);
  });
}
