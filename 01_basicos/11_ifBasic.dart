import 'dart:io';

void main(){

  stdout.write('ingresa un numero: ');
  double? n1 = double.tryParse(stdin.readLineSync()!);

  stdout.write('ingresa otro numero: ');
  double? n2 = double.tryParse(stdin.readLineSync()!);

  if (n1! > n2!){
    print('el numero mayor es: $n1');

  } else if (n1 < n2){
    print('el numero mayor es: $n2');
  }
  else {
    print('los numeros son iguales');
  }

}