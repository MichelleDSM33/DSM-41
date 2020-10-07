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

  Mammal(
      {this.color_pelo = 'desconocido',
      String nombre = 'desconocido',
      String sexo = 'desconocido',
      String alimentacion = 'desconocido',
      String especie = 'desconocido',
      int edad = 0,
      int peso = 0,
      int numero_crias = 0,
      int periodo_gestacion = 0,
      int longevidad = 0})
      : super(
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            edad: edad,
            peso: peso,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            longevidad: longevidad);

  // añadir métodos PROPIOS de los mamíferos
  void amamantar() {
    if ('Hembra' == sexo) {
      print('$nombre: estoy amamantando');
    } else {
      print('Ups!');
    }
  }
}

/*inicio MIXINS*/
class Swim {
  void nadar() {
    print('Estoy nadando');
  }
}

class Walk {
  void caminar() {
    print('Estoy caminando');
  }
}

class Fly {
  void volar() {
    print('Estoy volando');
  }
}
/*fin MIXINS*/

class Dolphin extends Mammal with Swim {
  Dolphin(
      {String color_pelo = 'desconocido',
      String nombre = 'desconocido',
      String sexo = 'desconocido',
      String alimentacion = 'desconocido',
      String especie = 'desconocido',
      int edad = 0,
      int peso = 0,
      int numero_crias = 0,
      int periodo_gestacion = 0,
      int longevidad = 0})
      : super(
            color_pelo: color_pelo,
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            edad: edad,
            peso: peso,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            longevidad: longevidad);
}

class Bat extends Mammal with Walk, Fly {
  Bat(
      {String color_pelo = 'desconocido',
      String nombre = 'desconocido',
      String sexo = 'desconocido',
      String alimentacion = 'desconocido',
      String especie = 'desconocido',
      int edad = 0,
      int peso = 0,
      int numero_crias = 0,
      int periodo_gestacion = 0,
      int longevidad = 0})
      : super(
            color_pelo: color_pelo,
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            edad: edad,
            peso: peso,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            longevidad: longevidad);
}

class Cat extends Mammal with Walk {
  //atributos

  Cat(
      {String color_pelo = 'desconocido',
      String nombre = 'desconocido',
      String sexo = 'desconocido',
      String alimentacion = 'desconocido',
      String especie = 'desconocido',
      int edad = 0,
      int peso = 0,
      int numero_crias = 0,
      int periodo_gestacion = 0,
      int longevidad = 0})
      : super(
            color_pelo: color_pelo,
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            edad: edad,
            peso: peso,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            longevidad: longevidad);
}

class Bird extends Animal {
  //atributos
  int longitud_pico;

  Bird(
      {this.longitud_pico,
      String nombre,
      String sexo,
      String alimentacion,
      String especie,
      int edad,
      int peso,
      int numero_crias,
      int periodo_gestacion,
      int longevidad})
      : super(
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            edad: edad,
            peso: peso,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            longevidad: longevidad);
}

class Duck extends Bird with Walk, Swim, Fly {
  Duck(
      {int longitud_pico,
      String nombre,
      String sexo,
      String alimentacion,
      String especie,
      int edad,
      int peso,
      int numero_crias,
      int periodo_gestacion,
      int longevidad})
      : super(
            longitud_pico: longitud_pico,
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            edad: edad,
            peso: peso,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            longevidad: longevidad);
}

void main() {
  // final Mammal elefante = new Mammal();
  // final Mammal elefante = Mammal(nombre: 'Dumbo', sexo: 'Macho');
  // elefante.come();
  // elefante.defeca();
  // elefante.muevete();
  // elefante.respira();
  // elefante.amamantar();

  // final Dolphin delfin = Dolphin(nombre: 'Delfino', sexo: 'Macho');
  // delfin.nadar();

  final Duck pato = new Duck(nombre: 'Lucas', sexo: 'Macho');
  pato.nadar();
  pato.volar();
  pato.caminar();
}
