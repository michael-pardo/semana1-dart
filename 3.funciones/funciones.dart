String obtenerNombre(String valor){
  return 'valor función $valor';
}

obtenerNombreFlecha(String valor) => print('valor función $valor');

String obtenerNombreNamedParameter({String valor = 'Michael', String? valor2, required String valor3}){
  return 'Mi nombre es $valor ${valor2 ?? ""} $valor3';
}

parametrosOpcionales(String valor1, [int? valor2]){
  return  valor1;
}

void main(){

  print(obtenerNombre("Michael"));
  print(obtenerNombreNamedParameter(valor3: "Pardo"));
  print(obtenerNombreNamedParameter(valor2: "Stiver",valor3: "Pardo"));
  print(obtenerNombreNamedParameter(valor2: null,valor3: "Pardo"));
  print(parametrosOpcionales("Michael",26));
  obtenerNombreFlecha("Pardo");
  
  var miFuncionAnonima = (String valor){
    return valor;
  };

  print(miFuncionAnonima("hola"));

}