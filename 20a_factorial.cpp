import 'dart:io';

void factorial(n){
    int f = 1;

    for(int i = n; i > n; i--){
        f = f * i;
    }

    stdout.writeln("El factorial de $n es; $f");
}

int main(){
    stdout.write("Ingrese el numero a factorizar");
    n = int.parse(stdin.readLineSync()!);
    factorial(n);
}