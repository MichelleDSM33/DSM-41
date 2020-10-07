class Animal {
  //atributos
  String nombre;
  String sexo;
  String alimentacion;
  String especie;
  int edad;
  int peso;
  int numero_crias;
  int periodo_gestacion;
  int longevidad;

  Animal(
      {this.nombre = 'desconocido',
      this.sexo = 'desconocido',
      this.alimentacion = 'desconocido',
      this.especie = 'desconocido',
      this.edad = 0,
      this.peso = 0,
      this.numero_crias = 0,
      this.periodo_gestacion = 0,
      this.longevidad = 0});

  void come() {
    print('$nombre: estoy comiendo');
  }

  void defeca() {
    print('$nombre: estoy defecando');
  }

  void muevete() {
    print('$nombre: me estoy moviendo');
  }

  void respira() {
    print('$nombre: estoy respirando');
  }
}

class Mammal extends Animal {
  // podemos añadir nuevos atributos
  String color_pelo;

  // añadir métodos PROPIOS de los mamíferos
  void amamantar() {
    if (sexo == 'Hembra') {
      print('$nombre: estoy amamantando');
    } else {
      print('Ups!');
    }
  }
}

void main() {
  print('Hola');
}
