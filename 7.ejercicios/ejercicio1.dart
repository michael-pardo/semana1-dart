import 'dart:math';

main(){
  var rng = new Random();
  final listaEdades = [for (int i = 0; i < 6; i++) rng.nextInt(100)];
  print("Lista = $listaEdades");
  print("Obtener Mayor = ${listaEdades.getMayor()}");
  print("Obtener Menor = ${listaEdades.getMenor()}");
  print("Obtener Promedio = ${listaEdades.getPromedio()}");
}

extension ListaInt on List<int>{
  int getMayor(){
    return this.reduce(max);
  }
  int getMenor(){
    return this.reduce(min);
  }
  double getPromedio(){
    return this.reduce((a, b) => a + b) / 6;
  }
}