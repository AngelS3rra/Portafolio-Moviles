import 'dart:io';

// Clase genérica que representa una estructura de cola (Queue)
// Funciona bajo el principio FIFO: First In, First Out
class Cola<T> {

  // Lista privada donde se guardan los elementos
  final List<T> _datos = [];

  // Método para agregar un elemento al final de la cola
  void agregar(T elemento) {
    _datos.add(elemento);
  }

  // Método para retirar el primer elemento de la cola
  T? quitar() {
    // Si la lista tiene elementos se elimina el primero
    if (_datos.isNotEmpty) {
      return _datos.removeAt(0);
    }
    // Si está vacía se devuelve null
    return null;
  }

  // Propiedad que indica si la cola está vacía
  bool get estaVacia {
    return _datos.isEmpty;
  }

  // Permite mostrar el contenido de la cola fácilmente
  @override
  String toString() {
    return _datos.toString();
  }
}

void main() {

  // Se crea una cola que almacenará números enteros
  final cola = Cola<int>();

  print("===== Estructura Cola =====");
  print("Comandos disponibles: numero | quitar | mostrar | salir");

  // Ciclo que permite interactuar continuamente con el usuario
  while (true) {

    stdout.write("> ");
    final entrada = stdin.readLineSync()?.trim().toLowerCase();

    if (entrada == null) continue;

    switch (entrada) {

      // Finaliza la ejecución del programa
      case 'salir':
        print("Programa finalizado");
        return;

      // Elimina el primer elemento de la cola
      case 'quitar':
        final eliminado = cola.quitar();

        if (eliminado != null) {
          print("Elemento eliminado: $eliminado");
        } else {
          print("La cola no contiene elementos");
        }
        break;

      // Muestra el contenido actual de la cola
      case 'mostrar':
        print(cola);
        break;

      // Si no es comando, intenta interpretarlo como número
      default:
        final numero = int.tryParse(entrada);

        if (numero != null) {
          cola.agregar(numero);
          print("Elemento agregado: $numero");
        } else {
          print("Entrada no válida");
        }
    }

    // Se imprime el estado actual de la cola
    print("Cola actual: $cola\n");
  }
}