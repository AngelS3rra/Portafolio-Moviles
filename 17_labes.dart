import 'dart:io';

main() {
  int r = 0;
  outterCycle:
  for (int j = 0; j < 10; j++){
    /*if (j == 2){
      break;
    } */
    stdout.writeln('el valor de J es: $j');
    for (int i = 0; i < 10; i++){
      r = i % 2;
      if (r == 1){
      break outterCycle;
      }
      stdout.writeln('el valor de I es: $i');
    }
  }
}