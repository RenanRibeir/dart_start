import 'dart:io';

main() {
  bool run = true;

  while (run) {
    print("Manipule a lista seguindo as opções: ");
    print("1 - Adicionar");
    print("2 - Listar");
    print("3 - Pesquisa");
    print("4 - Remover");
    print("5 - Editar");
    int input = int.parse(stdin.readLineSync()!);

    switch (input) {
      case 1:
        print("Digite sua chave");
        int name = int.parse(stdin.readLineSync()!);
        print("Digite o valor");
        String value = stdin.readLineSync()!;
        List.register(name, value);
        break;
      case 2:
        List.list();
        break;
      case 3:
        print("Digite a chave para a pesquisa: ");
        String key = stdin.readLineSync()!;
        List.search(key);
        break;
      case 4:
        print("Digite a chave para a remoção: ");
        int key = int.parse(stdin.readLineSync()!);
        List.remove(key);
        break;
      case 5:
        print("Digite sua chave");
        int name = int.parse(stdin.readLineSync()!);
        print("Digite o valor");
        String value = stdin.readLineSync()!;
        List.edit(name, value);
        break;
      default:
        run = false;
        break;
    }
  }
}

class List {
  static final Map<int, String> data = Map<int, String>();

  static void register(int value, String name) {
    data.keys.toList().indexOf(value) != -1
        ? data[value] = name
        : print("Valor já registrado");
  }

  static void edit(int value, String name) {
    data.keys.toList().indexOf(value) == -1
        ? data[value] = name
        : print("chave não encontrada");
  }

  static void remove(var key) {
    data.remove(key);
  }

  static int search(String key) {
    int index = -1;

    int name = data.keys.toList().indexOf(int.parse(key));

    int value = data.values.toList().indexOf(key);

    if (value != -1) {
      index = value;
    } else if (name != -1) {
      index = name;
    }

    return index;
  }

  static void list() {
    print(data.toString());
  }
}
