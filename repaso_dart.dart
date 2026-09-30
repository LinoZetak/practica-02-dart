// PRÁCTICA 02 - Repaso de tipos de datos de Dart

enum Direccion { norte, sur, este, oeste }

(String, int) obtenerInfo() {
  return ('Dart', 3);
}

void main() {
  // Tipos primitivos
  int edad = 22;
  double nota = 18.5;
  String nombre = 'Ana';
  bool activo = true;
  num valor = 42;
  dynamic dato = 'Hola';
  var lenguaje = 'Dart';

  print('$nombre - $edad - $nota - $activo - $valor - $dato - $lenguaje');

  // List
  List<int> numeros = [1, 2, 3, 4, 5];
  numeros.add(6);
  print(numeros);
  print(numeros.where((n) => n > 3).toList());
  print(numeros.map((n) => n * 2).toList());

  // Map
  Map<String, int> edades = {'Ana': 25, 'Luis': 30};
  edades['Maria'] = 22;
  edades.forEach((nombre, edad) => print('$nombre: $edad'));

  // Set
  Set<int> a = {1, 2, 3, 4, 5};
  Set<int> b = {4, 5, 6, 7, 8};
  print(a.union(b));
  print(a.intersection(b));
  print(a.difference(b));

  // Record
  var punto = (10.0, 20.0);
  print('${punto.$1}, ${punto.$2}');

  var (lenguajeRecord, version) = obtenerInfo();
  print('$lenguajeRecord $version');

  // Enum
  var direccion = Direccion.norte;
  print(direccion.name);

  // Null safety
  String? apellido;
  print(apellido?.toUpperCase());
  print(apellido ?? 'Sin apellido');
  apellido ??= 'Garcia';
  print(apellido);
}
