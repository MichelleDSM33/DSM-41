int suma_dos_numeros(int num_1, int num_2) {
  return num_1 + num_2;
}

String saludo(String saludo, String nombre) {
  return '$saludo: $nombre';
}

String saludocompleto(
    {String nombre = 'Usuario', String apellidos = 'Desconocido'}) {
  return 'Hola: $nombre $apellidos';
}

void main() {
  // int resultado = suma_dos_numeros(5, 6);
  // print(resultado);
  //print(suma_dos_numeros(5, 23));
  //print(saludo('Hola', 'Miguel Rivera'));
  print(saludocompleto());
  print(saludocompleto(nombre: 'Benito'));
  print(saludocompleto(apellidos: 'Juarez'));
  print(saludocompleto(nombre: 'benito', apellidos: 'juarez'));
  print(saludocompleto(apellidos: 'juarez', nombre: 'benito'));
}
