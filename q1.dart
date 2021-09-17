import 'dart:io';
import 'dart:math';

main() {
  print("======= Equações de Segundo grau ========");
  print("Seguindo o formato ax^2 + bx + c = 0\n");

  print("digite o termo 'a' função do 2° grau: ");
  double a = double.parse(stdin.readLineSync()!);

  print("digite o termo 'b' função do 2° grau: ");
  double b = double.parse(stdin.readLineSync()!);

  print("digite o termo 'c' função do 2° grau: ");
  double c = double.parse(stdin.readLineSync()!);

  calcRaiz(a, b, c);
}

double delta(double a, double b, double c) {
  //Δ = b2 – 4ac
  return b * b - 4 * a * c;
}

void calcRaiz(double a, double b, double c) {
  double d = delta(a, b, c);

  //x = (– b + √Δ)/2·a
  double x1 = ((-b + sqrt(d)) / (2 * a));
  //x = (– b - √Δ)/2·a
  double x2 = ((-b - sqrt(d)) / (2 * a));

  if (x1.isNaN || x2.isNaN)
    print("Funcão não possui raiz");
  else
    print("\nAs duas raizes da função são x1 = $x1 x2 = $x2");
}
