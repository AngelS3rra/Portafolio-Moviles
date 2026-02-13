import 'dart:io';

main(){
  double a;
  int? b;
  while( b != 0){
    print('MULTIPLICACIÓN');
    stdout.write('Ingresa un número: ');
    a = double.parse(stdin.readLineSync()!);
    for(int i = 1; i < 51; i++){
      double res = a*i;
      print('$a * $i es igual $res');
    }
  stdout.write('Si desea que el programa termine ingrese un "0"\n');
  b = int.parse(stdin.readLineSync()!);
  }
}