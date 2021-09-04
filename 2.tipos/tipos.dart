void main() {

  double puntosDouble = 10.0;
  num edadNum = puntosDouble;
  print(edadNum);

  var texto1 = 'valor con comilla simple';
  var texto2 = "valor con comilla doble";
  var texto3 = "It's easy to escape the string delimiter";
  var texto4 = 'It\'s easy to escape the string delimiter';
  var texto6 = "me uno con" + ",este otro valor";
  var texto7 = "me uno con"",este otro valor";
  var texto5 = "el resultado de sumar 3+3 es ${3 + 3}";
  var variableTipoNumero = 50;
  var texto8 = "el valor de la variableTipoNumero es $variableTipoNumero";
  var texto9 = "comillas en texto \'$texto5\'";
  var texto10 = '''este es un texto muy largo para
                  escribir en una sola línea
                ''';
  var texto11 = r'Mostrar este caracter \';

  print(texto1);
  print(texto2);
  print(texto3);
  print(texto4);
  print(texto5);
  print(texto6);
  print(texto7);
  print(texto8);
  print(texto9);
  print(texto10);
  print(texto11);

  String texto12 = '';
  if (texto12.isEmpty) {
    print("Texto 12 es vacío");
  }

  var variableNull = null;
  if (variableNull == null) {
    print('variable null');
  }

  var lista1 = ['mazda', 'kia', 'renault'];
  List<String> lista2 = ['mazda', 'kia', 'renault'];
  var lista3 = [
    "chevrolet",
    ...lista1
  ];
  lista3.add("bmw");
  List<String>? lista4 = null;
  var lista5 = [...lista3, ...?lista4];

  var listaSet = {'mazda', 'kia', 'renault'};
  listaSet.add("mazdados");
  listaSet.add("kia");
  listaSet.clear();
  List<dynamic> listaDinamica = [1.0, "hola", true];

  var maps1 = {
    'red': 'rojo',
    'blue': "azul"
  };
  maps1['green'] = 'verde';

  print(lista1);
  print(lista2);
  print(lista2.last);
  print(lista2.reversed);
  print(lista3);
  print(listaSet);
  print(listaDinamica);
  print(maps1);
  print(maps1.length);
  maps1.forEach((key, value) => print(key));
  maps1.forEach((key, value) {
    print(key);
    print(value);
  });
}
