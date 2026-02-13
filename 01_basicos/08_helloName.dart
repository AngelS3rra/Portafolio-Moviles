import 'dart:io';

void main(){

stdout.write('Ingrese su nombre: ');
String? nombre = stdin.readLineSync();

print('te llamas $nombre');

}