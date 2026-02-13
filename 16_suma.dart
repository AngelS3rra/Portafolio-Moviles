import 'dart:io';

main(){
  double res = 0;
  double? x;
  print('SUMA NUMEROS X UNA N CANTIDAD DE VECES');
  while(x != 0){
    try{
      stdout.write('Ingresa un numero X o el 0 si quiere que el programa termine: ');
      x = double.parse(stdin.readLineSync()!);
      res += x;
    }catch(e){
      print('Error: Debe ingresar un numero');
    }
  
  }
  print('La suma es $res');
}