main() {
  String input = "estude muito sempre sempre estude";
  Map<String, int> dicionario = Map<String, int>();
  List<String> inputl = [];
  String temp = '';

  for (int i = 0; i < input.length; i++) {
    temp = temp + input[i];

    if (input[i] == ' ') {
      inputl.add(temp.substring(0, temp.length - 1));
      temp = '';
    }

    if (i == input.length - 1) {
      inputl.add(temp.substring(0, temp.length));
    }
  }

  inputl.sort();

  for (int i = 0; i < inputl.length; i++) {
    if (dicionario.containsKey(inputl[i])) {
      dicionario[inputl[i]] = dicionario.values
              .toList()[dicionario.keys.toList().indexOf(inputl[i])] +
          1;
    } else {
      dicionario[inputl[i]] = 1;
    }
  }

  print(dicionario);
}
