import 'dart:io';

main() {
  print("digite a quantidade de linhas da sua matriz");
  int lines = int.parse(stdin.readLineSync()!);

  print("digite a quantidade de colunas da sua matriz");
  int columns = int.parse(stdin.readLineSync()!);

  var matrix = [];

  for (int i = 0; i < lines; i++) {
    matrix.add([]);
    for (int j = 0; j < columns; j++) {
      print("digite o item da linha $i coluna $j: ");
      matrix[i].add(stdin.readLineSync()!);
    }
  }

  for (int i = 0; i < lines; i++) {
    print("Linha $i: ${matrix[i]}");
  }
}
