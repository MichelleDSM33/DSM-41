class Mamifero {
  // propiedades
  String nombre;
  String sexo;
  int edad;

  // constructor
  // Mamifero(String nombre, String sexo, int edad) {
  //   this.nombre = nombre;
  //   this.sexo = sexo;
  //   this.edad = edad;
  // }

  Mamifero({this.nombre = 'Anómimo', this.sexo = 'desconocido', this.edad = 0});

  String toString() {
    return 'Nombre: ${this.nombre}, sexo: ${this.sexo}, edad: ${this.edad}';
  }
}

void main() {
  // Mamifero canguro = new Mamifero('Canguro', 'Macho', 3);
  // Mamifero canguro = new Mamifero(nombre: 'Canguro', sexo: 'Macho', edad: 3);
  Mamifero canguro = new Mamifero(edad: 50);
  print(canguro);
}
