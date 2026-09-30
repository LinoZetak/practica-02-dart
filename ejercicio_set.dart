// PRÁCTICA 02 - Ejercicio de frutas y cestas
// Se usa un Set para registrar qué cestas ya fueron utilizadas.

int frutasSinColocar(List<int> frutas, List<int> cestas) {
  Set<int> cestasUsadas = {};
  int sinColocar = 0;

  for (int fruta in frutas) {
    bool colocada = false;

    // Buscar la cesta disponible más a la izquierda con capacidad suficiente.
    for (int j = 0; j < cestas.length; j++) {
      if (!cestasUsadas.contains(j) && cestas[j] >= fruta) {
        cestasUsadas.add(j);
        colocada = true;
        break;
      }
    }

    if (!colocada) {
      sinColocar++;
    }
  }

  return sinColocar;
}

void main() {
  // Ejemplo 1 de la guía
  print(frutasSinColocar([4, 2, 5], [3, 5, 4]));
  // Salida esperada: 1

  // Ejemplo 2 de la guía
  print(frutasSinColocar([3, 6, 1], [6, 4, 7]));
  // Salida esperada: 0
}
