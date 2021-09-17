main() {
  String word1 = "aba";
  String word2 = "abb";

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
