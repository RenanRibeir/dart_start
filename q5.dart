import 'dart:io';

main() {
  String word1;
  String word2;

  print("Entre com a primeira palavra\n");
  word1 = stdin.readLineSync()!;

  print("Entre com a segunda palavra\n");
  word2 = stdin.readLineSync()!;

  bool anagrama = true;

  if (word1.length == word2.length) {
    for (int i = 0, j = word1.length - 1; i < word1.length; i++, j--) {
      if (word1[i] != word2[j]) {
        anagrama = false;
      }
    }
  }

  print(anagrama);
}
