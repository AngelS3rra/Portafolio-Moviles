
import 'dart:io';

void main(){

stdout.write('Ingrese el primer número: ');
double? num1 = double.tryParse(stdin.readLineSync()!);

stdout.write('Ingrese el segundo número: ');
double? num2 = double.tryParse(stdin.readLineSync()!);

var suma = num1! + num2!;

print('la suma es de: $suma');

}