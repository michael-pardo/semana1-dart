main(){
  final a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  final listaPares = a.obtenerPares();
  print("Lista de pares $listaPares");
}

extension ListIntExt on List<int>{
  List<int> obtenerPares(){
    return this.where((element) => element.isEven).toList();
  }
}
