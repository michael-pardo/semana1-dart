void main() {

  var nombre = "Michael";
  String nombreDos = "Michael";
  var test;
  test = 100;
  int? variableNull = null;
  
  final String variableFinalTest = "Hola";
  const String variableConstanteTest = "Hola";

  print(nombre);
  print(nombreDos.toUpperCase());
  print(variableNull);
  print(variableNull ?? "Esta variable es nula");
  print(test);
}