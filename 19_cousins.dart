import 'dart:io';

void cousin(numero){

  if(numero <= 1){
    print('No es primo');
  }
  
  if(numero == 2){
    print('Es primo');
  }

  if(numero % 2 == 0){
    print('No es un numero primo');
  }

  // if(numero % 3 == 0 || numero % 3 == 1){
  //   print('No es primo');
  // }

  for (int i = 3; i <= numero; i += 2) {
    if (numero % i == 0) {
      print('NO ES UN PRIMO');
      return;
    }else{
      print('es un primo');
    }
  }


  // for(int c = 0; c <= numero; c ++){
  //   if(numero % c == 0){
  //     print('No es primo');
  //   }
  // }
}

main(){
  stdout.write('Ingrese un número: ');
  int n = int.parse(stdin.readLineSync()!);
  cousin(n);
  }


