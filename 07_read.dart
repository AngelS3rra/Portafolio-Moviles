import 'dart:io';

void main(){
  stdout.write('enter your name: ');
  String? name = stdin.readLineSync();
  stdout.write('hello $name');
}