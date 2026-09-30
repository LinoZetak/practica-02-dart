// PRÁCTICA 02 - Ejercicio con Map
// Obtiene la intersección de dos listas respetando las repeticiones.

List<int> interseccion(List<int> nums1, List<int> nums2) {
  Map<int, int> frecuencias = {};

  // Contar cuántas veces aparece cada número en nums1.
  for (int numero in nums1) {
    frecuencias[numero] = (frecuencias[numero] ?? 0) + 1;
  }

  List<int> resultado = [];

  // Agregar un número si todavía existe una ocurrencia disponible.
  for (int numero in nums2) {
    int cantidad = frecuencias[numero] ?? 0;

    if (cantidad > 0) {
      resultado.add(numero);
      frecuencias[numero] = cantidad - 1;
    }
  }

  return resultado;
}

void main() {
  // Ejemplo 1 de la guía
  print(interseccion([1, 2, 2, 1], [2, 2]));
  // Salida esperada: [2, 2]

  // Ejemplo 2 de la guía
  print(interseccion([4, 9, 5], [9, 4, 9, 8, 4]));
  // Salida válida: [9, 4] (la guía también acepta [4, 9])
}
