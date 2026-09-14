//Sesion 02C
//Listas

void main() {
  final numeros = <int>[4, 5, 6, 7, 8];
  print("Lista de numeros: $numeros");
  print("Longitud: ${numeros.length}");
  print("El valor 0 de la lista es: ${numeros[0]}");
  print("El ultimo valor de la lista es: ${numeros[numeros.length - 1]}");

  print("El primer valor de la lista es: ${numeros.first}");
  print("El ultimo valor de la lista es: ${numeros.last}");
  final numerosReversed = numeros.reversed;
  print("Reversed to List: ${numerosReversed.toList()}");
  print("Reversed to Set: ${numerosReversed.toSet()}");

  //Uso de filtros
  final numerosGrandes = numeros.where((int numero) {
    return numero > 5;
  });

  print("Numeros grandes: $numerosGrandes");
  print("Numeros grandes: {$numerosGrandes.toList()}");
}
