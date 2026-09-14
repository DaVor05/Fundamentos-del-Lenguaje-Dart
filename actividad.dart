//Fundamentos del Lenguaje Dart
//Dado una lista de valores (N muestras),crear las funciones correspondientes para obtener.

void main() {
  List<num> muestras = [1, 2, 3, 8, 5, 2];

  // Copia y ordena la lista sin modificar la original
  List<num> ordenadas = List.from(muestras)..sort();

  print('Los valores fueron: $muestras');
  print('${ordenadas.join(', ')}');
  print('Cantidad de muestras: ${muestras.length}');
  print('Media: ${calcularMedia(muestras)}');
  print('Mediana: ${calcularMediana(muestras)}');
  print('Moda: ${calcularModa(muestras)}');
}

/// Calcula el promedio aritmético de la lista
double calcularMedia(List<num> datos) {
  if (datos.isEmpty) return 0.0;
  num suma = datos.reduce((a, b) => a + b);
  return suma / datos.length;
}

/// Calcula el valor central de la lista ordenada
double calcularMediana(List<num> datos) {
  if (datos.isEmpty) return 0.0;

  List<num> ordenados = List.from(datos)..sort();
  int n = ordenados.length;
  int mitad = n ~/ 2;

  if (n % 2 == 1) {
    return ordenados[mitad].toDouble();
  } else {
    return (ordenados[mitad - 1] + ordenados[mitad]) / 2.0;
  }
}

/// Obtiene el valor con mayor frecuencia de aparición
num calcularModa(List<num> datos) {
  if (datos.isEmpty) return 0;

  Map<num, int> frecuencias = {};
  for (var x in datos) {
    frecuencias[x] = (frecuencias[x] ?? 0) + 1;
  }

  num moda = datos.first;
  int maxFrecuencia = 0;

  frecuencias.forEach((numero, frecuencia) {
    if (frecuencia > maxFrecuencia) {
      maxFrecuencia = frecuencia;
      moda = numero;
    }
  });

  return moda;
}
