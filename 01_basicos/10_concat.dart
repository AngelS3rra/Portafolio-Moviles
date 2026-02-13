import 'dart:io';

void main(){
  stdout.write('enter your name: ');
  String? name = stdin.readLineSync();

  stdout.write('enter your lastname: ');
  String? lastname = stdin.readLineSync();

  stdout.write('enter your middle name: ');
  String? middlename = stdin.readLineSync();

  stdout.write('hello $name $middlename $lastname');
}