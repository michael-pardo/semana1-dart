main(){
  final listaPalabras = ["ANA", "PEDRO", "PALOMA", "ANITA LAVA LA TINA"];
  listaPalabras.forEach((palabra) {
    print("Palabra ${palabra} es Palindromo = ${palabra.esPalindromo()}");
  });
}

extension StringExt on String{
  bool esPalindromo(){
    return this.limpiarString() == this.split('').reversed.join('').limpiarString();
  }
  String limpiarString(){
    return this.replaceAll(" ", "").toUpperCase();
  }
}