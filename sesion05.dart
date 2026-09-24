//Sesion 05
//Clases

void main() {
  Personaje heroe = Personaje(
    clase: "Arquero",
    nombre: "Julian",
    vida: -100,
    stamina: 50,
    escudo: 20,
  );

  //print(heroe.nombre);
  //print(heroe.escudo);
  //print(heroe.vida);
  print(heroe);
}

class Personaje {
  String nombre;
  String clase;
  int vida;
  int stamina;
  int escudo;

  Personaje({
    required this.clase,
    required this.nombre,
    required this.vida,
    required this.stamina,
    required this.escudo,
  }) : assert(vida >= 0, "La vida no puede ser negativa"),
       assert(stamina >= 0, "La stamina no puede ser negativa");

  @override
  toString() =>
      "Nombre: " +
      this.nombre +
      " Clase: " +
      this.clase +
      " Vida: " +
      this.vida.toString() +
      " Stamina: " +
      this.stamina.toString() +
      " Escudo: " +
      this.escudo.toString();

  String sum() {
    return "a + b = c";
  }

  String suma() => "a + b = c";
}
