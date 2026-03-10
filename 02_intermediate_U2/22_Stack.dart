// Comprueba si la pila no contiene elementos
bool stackVacio(int top) {
  // Cuando top es -1 significa que nunca se ha insertado nada
  return top == -1;
}

// Comprueba si la pila llegó a su capacidad máxima
bool stackLleno(int top, int capacidad) {
  // Si top está en la última posición disponible, ya no caben más datos
  return top >= capacidad - 1;
}

// Inserta un elemento en la pila
int insertar(List<int> pila, int top, int capacidad, int dato) {
  // Primero se valida si existe espacio
  if (stackLleno(top, capacidad)) {
    print("No se puede insertar, la pila está llena");
    return top;
  }

  // Se mueve el indicador al siguiente espacio disponible
  top++;

  // Se guarda el nuevo dato en la pila
  pila[top] = dato;

  // Se devuelve el nuevo valor del índice superior
  return top;
}

// Elimina el elemento superior de la pila
int eliminar(List<int> pila, int top) {
  // Verifica si hay elementos para eliminar
  if (stackVacio(top)) {
    print("No hay elementos que eliminar");
    return top;
  }

  // Limpia la posición actual (solo para visualizar el cambio)
  pila[top] = 0;

  // El índice superior retrocede una posición
  top--;

  // Se devuelve el nuevo top
  return top;
}

void main() {

  // Capacidad máxima que tendrá la pila
  int capacidad = 5;

  // Se crea la estructura que almacenará los valores
  List<int> pila = List.filled(capacidad, 0);

  // Índice que indica la parte superior de la pila
  int top = -1;

  // Inserción de algunos valores
  top = insertar(pila, top, capacidad, 10);
  top = insertar(pila, top, capacidad, 20);
  top = insertar(pila, top, capacidad, 30);

  // Estado actual de la pila
  print("Contenido de la pila: $pila");

  // Eliminación del último elemento agregado
  top = eliminar(pila, top);

  // Estado final de la pila
  print("Pila después de eliminar: $pila");
}