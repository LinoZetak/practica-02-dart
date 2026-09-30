// PRÁCTICA 02 - Ejercicio con List
// Combina dos listas ordenadas y devuelve una sola lista ordenada.

List<int> combinarListasOrdenadas(List<int> lista1, List<int> lista2) {
  List<int> resultado = [];
  int i = 0;
  int j = 0;

  while (i < lista1.length && j < lista2.length) {
    if (lista1[i] <= lista2[j]) {
      resultado.add(lista1[i]);
      i++;
    } else {
      resultado.add(lista2[j]);
      j++;
    }
  }

  // Agregar los elementos restantes.
  while (i < lista1.length) {
    resultado.add(lista1[i]);
    i++;
  }

  while (j < lista2.length) {
    resultado.add(lista2[j]);
    j++;
  }

  return resultado;
}

void main() {
  // Ejemplo 1 de la guía
  print(combinarListasOrdenadas([1, 2, 4], [1, 3, 4]));
  // Salida esperada: [1, 1, 2, 3, 4, 4]

  // Ejemplo 2 de la guía
  print(combinarListasOrdenadas([], []));
  // Salida esperada: []

  // Ejemplo 3 de la guía
  print(combinarListasOrdenadas([], [0]));
  // Salida esperada: [0]
}
