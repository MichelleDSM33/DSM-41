import 'dart:convert';

class Mamifero {
  String nombre;
  String sexo;
  int edad;

  // cosntructor
  /*Mamifero(String nombre, String sexo, int edad) {
    this.nombre = nombre;
    this.sexo = sexo;
    this.edad = edad;
  }
  */
  /* Mamifero(
      {String this.nombre = 'Anonimo',
      String this.sexo = 'desconocido',
      int this.edad = 0});
  */
  Mamifero.fromJson(Map<String, dynamic> parsedJson) {
    this.nombre = parsedJson['nombre'];
    this.sexo = parsedJson['sexo'];
    this.edad = parsedJson['edad'];
  }
  String toString() {
    return 'Nombre: ${this.nombre}, sexo: ${this.sexo}, edad: ${this.edad}';
  }
}

void main() {
  String rawJson = '{"nombre":"canguro", "sexo":"macho", "edad":3}';
  Map<String, dynamic> parsedJson = json.decode(rawJson);
  // Mamifero canguro = new Mamifero(
  //     nombre: parsedJson['nombre'],
  //     sexo: parsedJson['sexo'],
  //     edad: parsedJson['edad']);
  // Mamifero canguro = new Mamifero(nombre: parsedJson['nombre']);
  Mamifero canguro = new Mamifero.fromJson(parsedJson);
  print(canguro);

  //print(parsedJson['nombre']);
  //print(parsedJson['sexo']);
  //print(parsedJson['edad']);
  //Mamifero canguro = new Mamifero();
  //print(canguro);
}
