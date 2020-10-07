class Animal {
  //atributos
  String nombre;
  String alimentacion;
  String sexo;
  String especie;
  int peso;
  int edad;
  int numero_crias;
  int periodo_gestacion;
  int longevidad;

  Animal(
      {this.nombre = 'desconocido',
      this.sexo = 'desconocido',
      this.alimentacion = 'desconocido',
      this.especie = 'desconocido',
      this.peso = 0,
      this.edad = 0,
      this.numero_crias = 0,
      this.periodo_gestacion = 0,
      this.longevidad = 0});

  void come() {
    print('$nombre: Estoy comiendo');
  }

  void defeca() {
    print('$nombre: Estoy defecando');
  }

  void muevete() {
    print('$nombre: me estoy moviendo');
  }

  void respirar() {
    print('$nombre: estoy respirando');
  }
}

class Mammal extends Animal {
  // podemos añadir nuevos atributos
  String color_pelo;
  // añadir métodos propios de los mamiferos
  Mammal(
      {this.color_pelo,
      String nombre = 'desconocido',
      String sexo = 'desconocido',
      String alimentacion = 'desconocido',
      String especie = 'desconocido',
      int peso = 0,
      int edad = 0,
      int numero_crias = 0,
      int periodo_gestacion = 0,
      int longevidad = 0})
      : super(
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            peso: peso,
            edad: edad,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            longevidad: longevidad);

  void amamantar() {
    if (sexo == 'Hembra') {
      print('$nombre: estoy amamantando');
    } else {
      print('Ups..!');
    }
  }
}

class Swim {
  void nadar() {
    print('estoy nadando');
  }
}

class Walk {
  void caminar() {
    print('estoy cominando');
  }
}

class Fly {
  void volar() {
    print('estoy volando');
  }
}

class Dolphin extends Mammal with Swim {
  Dolphin(
      {String color_pelo = 'desconocido',
      String nombre = 'desconocido',
      String sexo = 'desconocido',
      String alimentacion = 'desconocido',
      String especie = 'desconocido',
      int peso = 0,
      int edad = 0,
      int numero_crias = 0,
      int periodo_gestacion = 0,
      int longevidad = 0})
      : super(
            color_pelo: color_pelo,
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            peso: peso,
            edad: edad,
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
      int peso = 0,
      int edad = 0,
      int numero_crias = 0,
      int periodo_gestacion = 0,
      int longevidad = 0})
      : super(
            color_pelo: color_pelo,
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            peso: peso,
            edad: edad,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            longevidad: longevidad);
}

class Cat extends Mammal with Walk {
  Cat(
      {String color_pelo = 'desconocido',
      String nombre = 'desconocido',
      String sexo = 'desconocido',
      String alimentacion = 'desconocido',
      String especie = 'desconocido',
      int peso = 0,
      int edad = 0,
      int numero_crias = 0,
      int periodo_gestacion = 0,
      int longevidad = 0})
      : super(
            color_pelo: color_pelo,
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            peso: peso,
            edad: edad,
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
      int peso,
      int edad,
      int numero_crias,
      int periodo_gestacion,
      int longevidad})
      : super(
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            peso: peso,
            edad: edad,
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
      int peso,
      int edad,
      int numero_crias,
      int periodo_gestacion,
      int longevidad})
      : super(
            longitud_pico: longitud_pico,
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            peso: peso,
            edad: edad,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            longevidad: longevidad);
}

class Dove extends Bird with Walk, Fly {
  Dove(
      {int longitud_pico,
      String nombre,
      String sexo,
      String alimentacion,
      String especie,
      int peso,
      int edad,
      int numero_crias,
      int periodo_gestacion,
      int longevidad})
      : super(
            longitud_pico: longitud_pico,
            nombre: nombre,
            sexo: sexo,
            alimentacion: alimentacion,
            especie: especie,
            peso: peso,
            edad: edad,
            numero_crias: numero_crias,
            periodo_gestacion: periodo_gestacion,
            longevidad: longevidad);
}

void main() {
  //final Mammal elefante = Mammal();
  //elefante.come();
  //elefante.defeca();
  //elefante.amamantar();
  //elefante.respira();
  //elefante.muevete();

  //final Dolphin delfin = Dolphin(nombre: 'Delfino', sexo: 'Macho');
  //delfin.nadar();
//
  //final Duck pato = Duck(nombre: 'lucas', sexo: 'Macho');
  //pato.caminar();
  //pato.nadar();
  //pato.volar();

  final Dove paloma = Dove();
  paloma.caminar();
  paloma.volar();
}
