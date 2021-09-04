String obtenerNombre({required String valor}){
  if (valor == 'juan'){
    throw FormatException("El nombre de $valor no puede ser procesado");
  }

  if (valor == 'pedro'){
    throw ("El nombre de $valor no puede ser procesado");
  }
  return valor;
}

void main(){

  try{
    String resultado = obtenerNombre(valor: "juan");
    print(resultado);
  } on FormatException catch (e){
    print("format exception");
    print(e);
  } catch (e){
    print("general");
    print(e);
  }

}