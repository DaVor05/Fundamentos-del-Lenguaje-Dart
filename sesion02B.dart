//Sesion02B
//Mapas

void main() {
  final Map<String, dynamic> persona = {
    "edad": "25",
    "nombre": "Emma Frost",
    "peso": 62.5,
    "mutante": true,
    "escuelas": {0: "Academia Massachussets", 1: "Academia X-men"},
    "poderes": <String>["Control Mental", "Ilusiones", "Ataques Psiquicos"],
  };
  print("persona: $persona");
  print("Edad: ${persona["edad"]}");
  print("Nombre: ${persona["nombre"]}");
  print("Academias: ${persona["escuelas"]}");
  print("Academias: ${persona["escuelas"][0]}");
  print("Poderes: ${persona["poderes"]}");
  print("Poderes: ${persona["poderes"][0]}");
}
