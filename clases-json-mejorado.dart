import 'dart:convert';

class Mamifero {
  String nombre;
  String sexo;
  int edad;

  Mamifero.fromJson(Map<String, dynamic> parsedJson) {
    nombre = parsedJson['nombre'];
    sexo = parsedJson['sexo'];
    edad = parsedJson['edad'];
  }

  String toString() {
    return 'Nombre: $nombre, sexo: $sexo, edad: $edad';
  }
}

void main() {
  String rawJson = '{"nombre":"canguro", "sexo":"macho", "edad":3}';
  Map<String, dynamic> parsedJson = json.decode(rawJson);
  Mamifero canguro = new Mamifero.fromJson(parsedJson);
  print(canguro);
}
