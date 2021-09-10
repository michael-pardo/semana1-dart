void main() {

  var artista = Artista("Branly", 29, "Fotografía", "Colombia");
  print(artista);
  artista.dibujar();

  final ingeniero1 = Ingeniero("Michael", 26, "Sistemas", "Unillanos");
  print(ingeniero1);
  ingeniero1.dibujar();
  ingeniero1.leer();

  final doctor1 = Doctor("Miguel", 42, "Medicina interna", "Meta");
  print(doctor1);
  doctor1.ejercitarse();
  doctor1.leer();

  var boxeador1 = Boxeador("Rambo", 33, 58.4, "pluma");
  print(boxeador1);
  boxeador1.ejercitarse();
  boxeador1.boxear();
}

abstract class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  @override
  String toString() {
    return "\n$nombre";
  }
}

abstract class Atleta extends Persona {
  String deporte;

  Atleta(String nombre, int edad, this.deporte) : super(nombre, edad);
}

mixin Dibujar {
  void dibujar() => print("Esta dibujando");
}

mixin Leer {
  void leer() => print("Esta leyendo");
}

mixin Ejercitarse {
  void ejercitarse() => print("Esta ejercitando");
}

mixin Boxear {
  void boxear() => print("Esta boxeando");
}

class Artista extends Persona with Dibujar {
  String estilo;
  String pais;

  Artista(String nombre, int edad, this.estilo, this.pais): super(nombre, edad);
}

class Ingeniero extends Persona with Dibujar, Leer {
  String tipoIngenieria;
  String empresa;

  Ingeniero(String nombre, int edad, this.tipoIngenieria, this.empresa): super(nombre, edad);
}

class Doctor extends Persona with Ejercitarse, Leer {
  String especialidad;
  String nombreClinica;

  Doctor(String nombre, int edad, this.especialidad, this.nombreClinica): super(nombre, edad);
}

class Boxeador extends Atleta with Ejercitarse, Boxear {
  double peso;
  String categoria;

  Boxeador(
      String nombre,
      int edad,
      this.peso,
      this.categoria,
      ): super(nombre, edad, "Boxeo");
}

