//clase abstracta

void main() {
  print("sesion06");

  Figura fig = Cuadrado(0.0, 0.0, "VERDE", 5);
  print(fig.render());

  List<Figura> figuras = <Figura>[
    Cuadrado(10, 0, "AZUL", 10),
    Circulo(20, 0, "ROJO", 7),
  ]; // <Figura>{}

  for (var figura in figuras) {
    print("El area es: ${figura.getArea()}");
    print(figura.render());
  }
}

abstract class Figura {
  double x;
  double y;
  String color;

  Figura(this.x, this.y, this.color);

  double getArea();

  String render() {
    return "Dibujando la figura de color: $color, en el punto P($x, $y)";
  }
}

class Circulo extends Figura {
  double radio;

  Circulo(double x, double y, String color, this.radio) : super(x, y, color);

  @override
  double getArea() {
    return 3.1416 * radio * radio;
  }
}

class Cuadrado extends Figura {
  double lado;

  Cuadrado(double x, double y, String color, this.lado) : super(x, y, color);

  @override
  double getArea() {
    return lado * lado;
  }

  @override
  String render() {
    return "Dibujando un cuadrado de color: $color en punto P($x, $y)";
  }
}
