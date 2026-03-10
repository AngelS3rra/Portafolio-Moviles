import 'dart:io';

// Función recursiva
int factorial(int num) {
  if (num < 0) {
    throw ArgumentError("No existe factorial de números negativos");
  }
  if (num == 0 || num == 1) {
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}

void main() {
  while(true){
    try {
      stdout.writeln('Ingresa el numero de factorial:');
      int num = int.parse(stdin.readLineSync()!);

      int resultado = factorial(num);

      stdout.writeln('-----------------------------');
      stdout.writeln('El factorial de $num es: $resultado');
      stdout.writeln('-----------------------------');
    } on FormatException {
      print("Debes ingresar un número entero válido");
    } on ArgumentError catch (e) {
      print(e.message);
    }
  }
}