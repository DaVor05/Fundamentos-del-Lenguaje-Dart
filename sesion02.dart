//Sesion 02
//Continuacion de tipos de datos

void main() {
  final int edad = 28;
  final double peso = 5.5;
  final String nombre = "Emma Frost";
  final bool esAlumno = true;

  //
  //final list<String>
  //final materias = <String>["Patrones de Diseno", "App Moviles I", "App Moviles II"];
  final List<String> materias = <String>[
    "Patrones de Diseno",
    "App Moviles I",
    "App Moviles II",
  ];

  print("""
    Edad: $edad
    Peso: $peso
    Nombre: $nombre
    Es alumno: $esAlumno
  """);
  print("Materias: $materias");
  print("Materias: ${materias[1]}");
  print("Materias: ${materias[2]}");
}
